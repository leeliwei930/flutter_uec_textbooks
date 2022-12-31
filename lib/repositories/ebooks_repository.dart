import 'package:dio/dio.dart';
import 'package:uec_textbooks/models/book.dart';
import 'package:uec_textbooks/models/year_group.dart';
import 'package:uec_textbooks/networking/books_client.dart';

class EbooksRepository {
  const EbooksRepository({required this.client});
  final BooksApiClient client;

  Future<List<Book>> getEbookByYearGroup({
    required YearGroup yearGroup,
    required CancelToken cancelToken,
  }) async {
    final response = await client.getBooks(
      yearGroup: yearGroup,
      cancelToken: cancelToken,
    );
    return response
        .map((Book book) => Book(
              name: book.name,
              downloadUrl: book.downloadUrl,
              size: book.size,
              yearGroup: yearGroup,
            ))
        .toList();
  }
}
