import 'package:flutter/material.dart';
import 'package:uec_textbooks/constants/spacing.dart';
import 'package:uec_textbooks/models/book.dart';

class SavedBookRecord extends StatelessWidget {
  const SavedBookRecord({
    super.key,
    required this.book,
  });
  final Book book;
  @override
  Widget build(BuildContext context) {
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
      onDismissed: (dismissDirection) {
        // TODO(leeliwei930): Remove record.
      },
      child: ListTile(
        title: Text(book.title),
      ),
    );
  }
}
