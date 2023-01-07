import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uec_textbooks/models/book.dart';
import 'package:uec_textbooks/providers/offline_books_provider.dart';
import 'package:uec_textbooks/providers/saved_library_provider.dart';

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
        title: Text(widget.book.title),
        trailing: offlineBookStateNotifier.when(
          checking: (book) => const CircularProgressIndicator(),
          downloadStarted: (book) => const CircularProgressIndicator(),
          downloadRequired: (book) => const Icon(Icons.cloud_download_outlined),
          downloading: (book, downloadProgress) => CircularProgressIndicator(
            value: downloadProgress,
          ),
          failed: (book, error, stackTrace) => const Icon(Icons.cancel),
          completed: (book) => const Icon(Icons.cloud_done),
          paused: (Book book, double progress) => const Icon(Icons.pause),
        ),
      );
    }
  }
}
