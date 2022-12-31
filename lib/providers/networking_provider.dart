import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uec_textbooks/networking/books_client.dart';
import 'package:uec_textbooks/utils/flavor_config.dart';

part 'networking_provider.g.dart';

@riverpod
Dio dio(_) => Dio(BaseOptions(
      sendTimeout: 10000,
      connectTimeout: 10000,
      receiveTimeout: 10000,
    ));

@riverpod
BooksApiClient ebooksClient(EbooksClientRef ref) {
  final dio = ref.read(dioProvider);
  final baseUrl = FlavorConfig.instance.baseUrl;

  return BooksApiClient(dio, baseUrl: baseUrl);
}
