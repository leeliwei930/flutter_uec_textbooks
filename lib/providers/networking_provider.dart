import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uec_textbooks/networking/ebooks_client.dart';
import 'package:uec_textbooks/utils/flavor_config.dart';

part 'networking_provider.g.dart';

@riverpod
Dio dio(_) => Dio(BaseOptions(
      sendTimeout: 10000,
      connectTimeout: 10000,
      receiveTimeout: 10000,
    ));

@riverpod
EbooksClient ebooksClient(EbooksClientRef ref) {
  final dio = ref.read(dioProvider);
  final baseUrl = FlavorConfig.instance.baseEndpoint;

  return EbooksClient(dio, baseUrl: baseUrl);
}
