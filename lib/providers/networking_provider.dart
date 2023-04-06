import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uec_textbooks_app/networking/books_client.dart';
import 'package:uec_textbooks_app/utils/flavor_config.dart';

part 'networking_provider.g.dart';

@riverpod
Dio dio(_) => Dio(BaseOptions(
      sendTimeout: const Duration(seconds: 20),
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
    ));

@riverpod
BooksApiClient ebooksClient(EbooksClientRef ref) {
  final dio = ref.read(dioProvider);
  final baseUrl = FlavorConfig.instance.baseUrl;

  return BooksApiClient(dio, baseUrl: baseUrl);
}
