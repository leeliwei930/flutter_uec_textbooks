import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final applicationDocumentDirectoryProvider = FutureProvider.autoDispose<Directory>((ref) {
  return getApplicationDocumentsDirectory();
});


