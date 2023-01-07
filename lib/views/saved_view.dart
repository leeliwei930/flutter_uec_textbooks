import 'dart:isolate';
import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:lottie/lottie.dart';
import 'package:uec_textbooks/components/empty_state_view.dart';
import 'package:uec_textbooks/components/saved_book_record.dart';
import 'package:uec_textbooks/constants/lottie_assets.dart';
import 'package:uec_textbooks/constants/spacing.dart';
import 'package:uec_textbooks/models/book.dart';
import 'package:uec_textbooks/models/book_group.dart';
import 'package:uec_textbooks/models/download_task_record.dart';
import 'package:uec_textbooks/providers/navigation_providers.dart';
import 'package:uec_textbooks/providers/offline_books_provider.dart';
import 'package:uec_textbooks/providers/saved_library_provider.dart';

class SavedView extends ConsumerStatefulWidget {
  const SavedView({super.key});

  @override
  ConsumerState<SavedView> createState() => _SavedViewConsumerState();
}

class _SavedViewConsumerState extends ConsumerState<SavedView> {
  final ReceivePort _port = ReceivePort();

  @override
  void initState() {
    super.initState();

    IsolateNameServer.registerPortWithName(_port.sendPort, 'downloader_send_port');
    _port.listen((data) async {
      if (data is DownloadTaskRecord) {
        final libraryBox = await ref.read(savedLibraryBoxProvider.future);
        final downloadedBook = libraryBox.values.firstWhere((book) => book.pdfDownloadTaskId == data.id);
        ref
            .read(offlineBookDownloadStateNotifierProvider(downloadedBook).notifier)
            .updateDownloadProgress(data.progress);
      }
    });
  }

  @override
  void dispose() {
    IsolateNameServer.removePortNameMapping('downloader_send_port');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final offlineBooks = ref.watch(offlineBooksNotifierProvider);
    final router = ref.read(routerProvider);
    final isBookSelectionMode = ref.watch(isBookSelectionModeProvider);
    final selectedBooks = ref.watch(selectedBooksStateProvider);
    final numberOfBookSelected = selectedBooks.length;

    final colorScheme = Theme.of(context).colorScheme;
    ref.listen<List<Book>>(selectedBooksStateProvider, (_, nextSelectedBooks) {
      if (nextSelectedBooks.isEmpty) {
        ref.invalidate(isBookSelectionModeProvider);
      }
    });
    return Scaffold(
      appBar: AppBar(
        title: isBookSelectionMode && selectedBooks.isNotEmpty
            ? Text(
                "$numberOfBookSelected ${plural("selected_books", numberOfBookSelected)}",
              )
            : Text("reading_list".tr()),
        actions: [
          if (isBookSelectionMode && selectedBooks.isNotEmpty) ...[
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.clear_all),
              onPressed: () {
                ref.invalidate(selectedBooksStateProvider);
              },
            ),
          ]
        ],
      ),
      body: offlineBooks.when(
        initial: () => const SizedBox.shrink(),
        loading: () => const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
        empty: () => EmptyStateView(
          primaryView: Lottie.asset(LottieAssets.emptyData),
          headline: 'savedLibrary.empty'.tr(),
          description: 'savedLibrary.emptySupport'.tr(),
          actions: [
            TextButton(
              onPressed: () => router.go(
                router.namedLocation('library'),
              ),
              child: Text(
                'savedLibrary.emptyAction'.tr().toUpperCase(),
              ),
            )
          ],
        ),
        loaded: (bookGroups) => _SavedLibraryLoaded(
          bookGroups: bookGroups,
        ),
        removed: (bookGroups) => _SavedLibraryLoaded(
          bookGroups: bookGroups,
        ),
        loadError: (error, stackTrace) => EmptyStateView(
          primaryView: Lottie.asset(LottieAssets.emptyData),
          headline: 'savedLibrary.error'.tr(),
          actions: [
            TextButton(
              onPressed: () {
                ref.read(offlineBooksNotifierProvider.notifier).fetchReadingList();
              },
              child: Text(
                'savedLibrary.retry'.tr().toUpperCase(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _SavedLibraryLoaded extends ConsumerStatefulWidget {
  const _SavedLibraryLoaded({required this.bookGroups});

  final List<BookGroup> bookGroups;

  @override
  ConsumerState<_SavedLibraryLoaded> createState() => _SavedLibraryLoadedState();
}

class _SavedLibraryLoadedState extends ConsumerState<_SavedLibraryLoaded> {
  List<Widget> _buildSliverWidgets({
    List<BookGroup> bookGroups = const [],
  }) {
    final slivers = <Widget>[];
    final colorScheme = Theme.of(context).colorScheme;
    final textStyle = Theme.of(context).textTheme;

    for (final bookGroup in bookGroups) {
      if (bookGroup.books.isNotEmpty) {
        slivers.add(
          SliverStickyHeader(
            header: Container(
              color: colorScheme.primary,
              padding: const EdgeInsets.symmetric(vertical: kSpacingXSmall, horizontal: kSpacingSmall),
              child: Text(
                "yearGroup.${bookGroup.yearGroup.name}".tr(),
                style: textStyle.titleMedium?.copyWith(
                  color: colorScheme.inversePrimary,
                ),
              ),
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: bookGroup.books.length,
                (context, index) {
                  final book = bookGroup.books.elementAt(index);

                  return SavedBookRecord(
                    book: book,
                  );
                },
              ),
            ),
          ),
        );
      }
    }
    return slivers;
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: _buildSliverWidgets(
        bookGroups: widget.bookGroups,
      ),
    );
  }
}
