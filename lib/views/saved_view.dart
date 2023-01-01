import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:uec_textbooks/components/saved_book_record.dart';
import 'package:uec_textbooks/constants/lottie_assets.dart';
import 'package:uec_textbooks/constants/spacing.dart';
import 'package:uec_textbooks/models/book.dart';
import 'package:uec_textbooks/models/book_group.dart';
import 'package:uec_textbooks/providers/offline_books_provider.dart';
import 'package:uec_textbooks/providers/saved_library_provider.dart';

class SavedView extends ConsumerWidget {
  const SavedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final savedLibraryBox = ref.watch(savedLibraryBoxProvider);
    return Scaffold(
      body: savedLibraryBox.maybeWhen(
        data: (bookCollection) {
          if (bookCollection.isEmpty) {
            return _EmptySavedLibrary();
          } else {
            return _SavedLibraryLoaded(
              bookCollection: bookCollection,
            );
          }
        },
        error: (error, stackTrace) {
          return const SizedBox.shrink();
        },
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }
}

class _SavedLibraryLoaded extends ConsumerStatefulWidget {
  const _SavedLibraryLoaded({required this.bookCollection});

  final Box<Book> bookCollection;

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
                    onRecordDismiss: (dismissDirection) async {
                      if (dismissDirection == DismissDirection.endToStart) {
                        await ref.read(bookOfflineStatusNotifierProvider(book).notifier).unsave();
                        ref.invalidate(savedLibraryBoxProvider);
                      }
                    },
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
    final bookGroups = BookGroup.fromBoxCollection(widget.bookCollection);
    return CustomScrollView(
      clipBehavior: Clip.hardEdge,
      slivers: _buildSliverWidgets(
        bookGroups: bookGroups,
      ),
    );
  }
}

class _EmptySavedLibrary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final color = Theme.of(context).colorScheme;
    return Center(
      child: Column(
        children: [
          Lottie.asset(LottieAssets.emptyData),
          Text(
            'savedLibrary.empty'.tr(),
            style: textStyle.titleLarge,
          ),
          const SizedBox(
            height: kSpacingMedium,
          ),
          Icon(
            size: 32,
            Icons.bookmark,
            color: color.error,
          ),
          const SizedBox(
            height: kSpacingSmall,
          ),
          Text(
            'savedLibrary.emptySupport'.tr(),
            style: textStyle.titleMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
