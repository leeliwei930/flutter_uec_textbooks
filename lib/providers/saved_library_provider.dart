import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uec_textbooks/models/book.dart';
import 'package:uec_textbooks/repositories/saved_library_repository.dart';

part 'saved_library_provider.g.dart';

@riverpod
Future<Box<Book>> savedLibraryBox(SavedLibraryBoxRef ref) async {
  final Box<Book> box = await Hive.openBox<Book>('saved_library');
  return box;
}

@riverpod
OfflineLibraryRepository savedLibraryRepository(SavedLibraryRepositoryRef ref) {
  return OfflineLibraryRepository(ref: ref);
}
