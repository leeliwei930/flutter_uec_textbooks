import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';
import 'package:uec_textbooks/constants/spacing.dart';
import 'package:uec_textbooks/models/book.dart';
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
    final isBookSelectionMode = ref.watch(isBookSelectionModeProvider);
    final selectedBooks = ref.watch(selectedBooksStateProvider);
    if (isBookSelectionMode) {
      return CheckboxListTile(
        value: selectedBooks.contains(widget.book),
        title: Text(widget.book.title),
        onChanged: (bool? value) {
          if (value ?? false) {
            ref.read(selectedBooksStateProvider.notifier).state = [
              widget.book,
              ...ref.read(selectedBooksStateProvider.notifier).state,
            ];
          } else {
            ref.read(selectedBooksStateProvider.notifier).state =
                selectedBooks.where((book) => book != widget.book).toList();
          }
        },
      );
    } else {
      return ListTile(
        contentPadding: const EdgeInsets.all(kSpacingMedium),
        leading: SizedBox(
          height: 320,
          child: CachedNetworkImage(
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
        onTap: () {
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
              // TODO(leeliwei930): open pdf using offline path.
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
}
