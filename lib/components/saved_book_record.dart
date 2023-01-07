import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';
import 'package:uec_textbooks/models/book.dart';
import 'package:uec_textbooks/providers/books_provider.dart';
import 'package:uec_textbooks/providers/offline_books_provider.dart';
import 'package:uec_textbooks/providers/saved_library_provider.dart';
import 'package:uec_textbooks/utils/textbook_cover_image.dart';

class SavedBookRecord extends ConsumerWidget {
  const SavedBookRecord({
    super.key,
    required this.book,
  });
  final Book book;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _BookListTile(book: book);
  }
}

class _BookListTile extends ConsumerStatefulWidget {
  const _BookListTile({required this.book});

  final Book book;

  @override
  ConsumerState<_BookListTile> createState() => _BookListTileState();
}

class _BookListTileState extends ConsumerState<_BookListTile> {
  @override
  Widget build(BuildContext context) {
    final offlineBookStateNotifier = ref.watch(
      offlineBookDownloadStateNotifierProvider(widget.book),
    );
    final bookPages = ref.watch(
      bookPagesProvider(book: widget.book),
    );
    final isBookSelected = ref.watch(isBookSelectionModeProvider);
    final selectedBooks = ref.watch(selectedBooksStateProvider);
    final colorScheme = Theme.of(context).colorScheme;

    return ListTile(
      isThreeLine: true,
      selected: selectedBooks.contains(widget.book),
      selectedTileColor: colorScheme.tertiary.withOpacity(0.25),
      leading: SizedBox(
        width: 80,
        child: CachedNetworkImage(
          fit: BoxFit.contain,
          imageUrl: TextBookCoverImage.url(
            yearGroup: widget.book.yearGroup!,
            filename: widget.book.imageName,
          ),
          progressIndicatorBuilder: (context, child, loadingProgress) {
            return Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: Container(
                color: Colors.white,
              ),
            );
          },
        ),
      ),
      title: Text(widget.book.title),
      subtitle: bookPages.maybeWhen(
        data: (pages) => Text("$pages ${plural("page", pages)}"),
        orElse: () => const SizedBox.shrink(),
      ),
      onLongPress: () {
        ref.read(isBookSelectionModeProvider.notifier).state = true;
        if (!selectedBooks.contains(widget.book)) {
          ref.read(selectedBooksStateProvider.notifier).state = [
            ...selectedBooks,
            widget.book,
          ];
        } else {
          ref.read(selectedBooksStateProvider.notifier).state = selectedBooks
              .where(
                (book) => book != widget.book,
              )
              .toList();
        }
      },
      onTap: () {
        if (isBookSelected) {
          if (!selectedBooks.contains(widget.book)) {
            ref.read(selectedBooksStateProvider.notifier).state = [
              ...selectedBooks,
              widget.book,
            ];
          } else {
            ref.read(selectedBooksStateProvider.notifier).state = selectedBooks
                .where(
                  (book) => book != widget.book,
                )
                .toList();
          }
          return;
        }
        offlineBookStateNotifier.maybeWhen(
          checking: (book) => const CircularProgressIndicator(),
          downloadStarted: (book) {
            // TODO(leeliwei930): paused download tasks
          },
          downloadRequired: (book) {
            // TODO(leeliwei930): enqueue the download tasks
          },
          downloading: (book, downloadProgress) {
            // TODO(leeliwei930): paused download tasks
          },
          failed: (book, error, stackTrace) {
            // TODO(leeliwei930): enqueue another download tasks
          },
          completed: (book) {
            ref.read(selectedBookStateProvider.notifier).state = book;
          },
          paused: (Book book, double progress) {
            // TODO(leeliwei930): check for existing download task, if existing one is available in download queue
            // use the resume the download task, else start a new task
          },
          orElse: () => null,
        );
      },
      trailing: offlineBookStateNotifier.when(
        checking: (book) => const CircularProgressIndicator(),
        downloadStarted: (book) => const CircularProgressIndicator(),
        downloadRequired: (book) => const Icon(Icons.cloud_download_outlined),
        downloading: (book, downloadProgress) => CircularProgressIndicator(
          value: downloadProgress,
        ),
        failed: (book, error, stackTrace) => const Icon(Icons.cloud_off),
        completed: (book) => const Icon(Icons.cloud_done),
        paused: (Book book, double progress) => const Icon(Icons.pause),
      ),
    );
  }
}
