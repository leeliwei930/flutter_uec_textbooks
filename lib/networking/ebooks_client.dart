import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:uec_textbooks/models/ebook.dart';
import 'package:uec_textbooks/models/year_group.dart';

part 'ebooks_client.g.dart';

@RestApi()
abstract class EbooksClient {
  factory EbooksClient(Dio dio, {String baseUrl}) = _EbooksClient;

  @GET('/contents/{yearGroup}')
  Future<List<Ebook>> getEbooks({
    @Path("yearGroup") required YearGroup yearGroup,
    @Query("ref") String ref = "main",
  });
}
