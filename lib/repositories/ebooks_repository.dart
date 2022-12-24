import 'package:uec_textbooks/models/ebook.dart';
import 'package:uec_textbooks/models/year_group.dart';
import 'package:uec_textbooks/networking/ebooks_client.dart';

class EbooksRepository {
  const EbooksRepository({required this.client});
  final EbooksClient client;

  Future<List<Ebook>> getEbookByYearGroup(YearGroup yearGroup) => client.getEbooks(yearGroup: yearGroup);
}
