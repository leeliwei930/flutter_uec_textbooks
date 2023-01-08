import 'package:dio/dio.dart';
import 'package:uec_textbooks_app/models/book.dart';
import 'package:uec_textbooks_app/models/year_group.dart';
import 'package:uec_textbooks_app/networking/books_client.dart';

class BooksRepository {
  const BooksRepository({required this.client});
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
              path: book.path,
              downloadUrl: book.downloadUrl,
              size: book.size,
              yearGroup: yearGroup,
            ))
        .toList();
  }
}
