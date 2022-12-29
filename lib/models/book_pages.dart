import 'package:uec_textbooks/models/ebook.dart';
import 'package:uec_textbooks/models/year_group.dart';

class YearGroupEbookPages {
  YearGroupEbookPages({required this.data});
  final Map<YearGroup, Map<String, int>> data;

  int? getPageCountByEBook(Ebook book) {
    final yearGroupBookPages = data[book.yearGroup!];
    if (yearGroupBookPages != null) {
      final filename = book.name.replaceAll('.pdf', '');
      return yearGroupBookPages[filename];
    }
    return null;
  }
}
