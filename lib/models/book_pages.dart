import 'package:uec_textbooks_app/models/book.dart';
import 'package:uec_textbooks_app/models/year_group.dart';

class YearGroupEbookPages {
  YearGroupEbookPages({required this.data});
  final Map<YearGroup, Map<String, int>> data;

  int? getPageCountByEBook(Book book) {
    final yearGroupBookPages = data[book.yearGroup!];
    if (yearGroupBookPages != null) {
      final filename = book.name.replaceAll('.pdf', '');
      return yearGroupBookPages[filename];
    }
    return null;
  }
}
