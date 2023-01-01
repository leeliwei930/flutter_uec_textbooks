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
    final offlineBookStateNotifier = ref.watch(
      offlineBookDownloadStateNotifierProvider(book),
    );

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
      child: offlineBookStateNotifier.when(
        downloadRequired: (book) => const SizedBox.shrink(),
        initiate: (book) => const SizedBox.shrink(),
        downloading: (book, downloadProgress) => const SizedBox.shrink(),
        failed: (error, stackTrace) => const SizedBox.shrink(),
        completed: (book) => const SizedBox.shrink(),
      ),
    );
  }
}
