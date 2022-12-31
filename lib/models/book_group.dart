import 'package:hive_flutter/hive_flutter.dart';
import 'package:uec_textbooks/models/year_group.dart';

import 'book.dart';

class BookGroup {
  const BookGroup._({
    required this.yearGroup,
    required this.books,
  });

  final YearGroup yearGroup;
  final List<Book> books;

  static List<BookGroup> fromBoxCollection(Box<Book> bookCollection) {
    return YearGroup.values.map((yearGroup) {
      return BookGroup._(
        yearGroup: yearGroup,
        books: bookCollection.values
            .where(
              (book) => book.yearGroup == yearGroup,
            )
            .toList(),
      );
    }).toList();
  }
}
