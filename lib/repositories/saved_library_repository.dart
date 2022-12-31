import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uec_textbooks/models/book.dart';
import 'package:uec_textbooks/providers/saved_library_provider.dart';

class SavedLibraryRepository {
  SavedLibraryRepository({required this.ref});

  Ref ref;

  void addToLibrary(Book book) async {
    final libraryBox = await ref.read(savedLibraryBoxProvider.future);
    libraryBox.put(book.path, book);
  }

  void removeFromLibrary(Book book) async {
    final libraryBox = await ref.read(savedLibraryBoxProvider.future);
    libraryBox.delete(book.path);
  }

  Future<bool> isSavedInLibrary(Book book) async {
    final libraryBox = await ref.read(savedLibraryBoxProvider.future);
    return libraryBox.containsKey(book.path);
  }
}
