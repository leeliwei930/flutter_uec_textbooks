import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uec_textbooks/constants/spacing.dart';
import 'package:uec_textbooks/models/book.dart';
import 'package:uec_textbooks/providers/offline_books_provider.dart';

class SavedBookRecord extends ConsumerWidget {
  const SavedBookRecord({
    super.key,
    required this.book,
    this.onRecordDismiss,
  });
  final Book book;
  final Function(DismissDirection)? onRecordDismiss;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final textStyle = Theme.of(context).textTheme;

    return Dismissible(
      key: Key(book.path),
      background: ColoredBox(
        color: colorScheme.error,
        child: Padding(
          padding: const EdgeInsets.all(kSpacingSmall),
          child: Text(
            "Slide left to remove from saved",
            textAlign: TextAlign.end,
            style: textStyle.titleMedium?.copyWith(
              color: colorScheme.inversePrimary,
            ),
          ),
        ),
      ),
      direction: DismissDirection.endToStart,
      onDismissed: onRecordDismiss,
      child: _BookListTile(book: book),
    );
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
