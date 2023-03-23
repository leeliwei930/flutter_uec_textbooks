import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'file_storage.g.dart';

@riverpod
Future<Directory> applicationDocumentDirectory(ref) => getApplicationDocumentsDirectory();

@riverpod
Future<Directory> temporaryDirectory(ref) => getTemporaryDirectory();
