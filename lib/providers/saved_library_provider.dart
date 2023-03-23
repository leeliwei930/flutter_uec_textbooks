import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uec_textbooks_app/models/book.dart';
import 'package:uec_textbooks_app/repositories/saved_library_repository.dart';

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

final selectedBooksStateProvider = StateProvider((ref) => <Book>[]);
final isBookSelectionModeProvider = StateProvider((ref) => false);
