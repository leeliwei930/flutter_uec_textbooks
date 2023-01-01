import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uec_textbooks/models/book.dart';
import 'package:uec_textbooks/providers/file_storage.dart';
import 'package:uec_textbooks/providers/networking_provider.dart';

class OfflineBookFileStorageService {
  OfflineBookFileStorageService(this.ref);
  Ref ref;

  Future<String?> saveFile(Book book) async {
    final appDirectory = await ref.read(applicationDocumentDirectoryProvider.future);
    final dio = ref.read(dioProvider);

    final isDirectoryExist = await appDirectory.exists();

    if (!isDirectoryExist) {
      return null;
    }
    final offlineDataDirectory = Directory('${appDirectory.path}/books');
    final isOfflineDirectoryExisted = await offlineDataDirectory.exists();
    if (!isOfflineDirectoryExisted) {
      await offlineDataDirectory.create(recursive: true);
    }
    final pdfResponse = await dio.get(
      book.downloadUrl,
      options: Options(
        responseType: ResponseType.bytes,
        followRedirects: false,
        validateStatus: (status) {
          return status != null && status < 500;
        },
      ),
    );
    final pdfData = pdfResponse.data;

    final downloadedFileName = '${offlineDataDirectory.path}/${book.name}';
    final downloadedFile = File(downloadedFileName);
    downloadedFile.openWrite();
    await downloadedFile.writeAsBytes(pdfData);
    return downloadedFile.path;
  }
}
