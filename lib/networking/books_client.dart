import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:uec_textbooks/models/book.dart';
import 'package:uec_textbooks/models/year_group.dart';

part 'books_client.g.dart';

@RestApi()
abstract class BooksApiClient {
  factory BooksApiClient(Dio dio, {String baseUrl}) = _BooksApiClient;

  @GET('/contents/{yearGroup}')
  Future<List<Book>> getBooks({
    required CancelToken cancelToken,
    @Path("yearGroup") required YearGroup yearGroup,
    @Query("ref") String ref = "main",
  });
}
