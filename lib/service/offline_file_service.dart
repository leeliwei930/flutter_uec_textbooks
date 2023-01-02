import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uec_textbooks/models/book.dart';
import 'package:uec_textbooks/providers/file_storage.dart';

class OfflineBookFileStorageService {
  OfflineBookFileStorageService(this.ref);
  Ref ref;

  Future<bool> checkBookAvailability(Book book) async {
    final pdfFileSavedDirectory = await getBookSavedDirectory(book);
    final file = File.fromUri(Uri.file('$pdfFileSavedDirectory/${book.name}'));
    return file.exists();
  }

  Future<String> getBookSavedDirectory(Book book) async {
    final appDirectory = await ref.read(applicationDocumentDirectoryProvider.future);
    final offlineDataDirectory = Directory('${appDirectory.path}/books');
    final isOfflineDirectoryExisted = await offlineDataDirectory.exists();
    if (!isOfflineDirectoryExisted) {
      await offlineDataDirectory.create(recursive: true);
    }

    return '${appDirectory.path}/books/${book.yearGroup!.name}';
  }
}
