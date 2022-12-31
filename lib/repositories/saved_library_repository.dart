import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uec_textbooks/models/book.dart';
import 'package:uec_textbooks/providers/books_provider.dart';
import 'package:uec_textbooks/providers/saved_library_provider.dart';

class SavedLibraryRepository {
  SavedLibraryRepository({required this.ref});

  Ref ref;

  Future<void> addToLibrary(Book book) async {
    final offlineBookService = ref.read(offlineBookServiceProvider);
    final storedFilePath = await offlineBookService.saveFile(book);
    if (kDebugMode) {
      print(storedFilePath);
    }
    if (storedFilePath != null) {
      final libraryBox = await ref.read(savedLibraryBoxProvider.future);
      libraryBox.put(
        book.path,
        Book(
          name: book.name,
          path: book.path,
          downloadUrl: book.downloadUrl,
          offlinePDFPath: storedFilePath,
          size: book.size,
        ),
      );
    }
  }

  Future<void> removeFromLibrary(Book book) async {
    final libraryBox = await ref.read(savedLibraryBoxProvider.future);
    libraryBox.delete(book.path);
  }

  Future<bool> isSavedInLibrary(Book book) async {
    final libraryBox = await ref.read(savedLibraryBoxProvider.future);
    return libraryBox.containsKey(book.path);
  }
}
