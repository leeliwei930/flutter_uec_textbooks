import 'package:uec_textbooks/models/ebook.dart';
import 'package:uec_textbooks/models/year_group.dart';
import 'package:uec_textbooks/networking/ebooks_client.dart';

class EbooksRepository {
  const EbooksRepository({required this.client});
  final EbooksClient client;

  Future<List<Ebook>> getEbookByYearGroup(YearGroup yearGroup) async {
    final response = await client.getEbooks(yearGroup: yearGroup);
    return response
        .map((Ebook book) => Ebook(
              name: book.name,
              downloadUrl: book.downloadUrl,
              size: book.size,
              yearGroup: yearGroup,
            ))
        .toList();
  }
}
