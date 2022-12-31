import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uec_textbooks/providers/networking_provider.dart';
import 'package:uec_textbooks/repositories/ebooks_repository.dart';

part 'repository_provider.g.dart';

@riverpod
BooksRepository ebooksRepository(EbooksRepositoryRef ref) {
  final client = ref.read(ebooksClientProvider);
  return BooksRepository(client: client);
}
