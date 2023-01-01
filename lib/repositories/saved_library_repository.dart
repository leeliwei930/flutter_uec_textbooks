import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uec_textbooks/models/book.dart';
import 'package:uec_textbooks/providers/saved_library_provider.dart';

class OfflineLibraryRepository {
  OfflineLibraryRepository({required this.ref});

  Ref ref;

  Future<void> addToLibrary(Book book) async {
    final libraryBox = await ref.read(savedLibraryBoxProvider.future);
    await libraryBox.put(book.path, book);
  }

  Future<void> updateLibraryBook({
    required String key,
    required Book book,
  }) async {
    final libraryBox = await ref.read(savedLibraryBoxProvider.future);
    await libraryBox.put(key, book);
  }

  Future<void> removeFromLibrary(Book book) async {
    final libraryBox = await ref.read(savedLibraryBoxProvider.future);
    await libraryBox.delete(book.path);
  }

  Future<bool> isSavedInLibrary(Book book) async {
    final libraryBox = await ref.read(savedLibraryBoxProvider.future);
    return libraryBox.containsKey(book.path);
  }
}
