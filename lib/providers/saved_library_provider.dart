import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uec_textbooks/models/book_adapter.dart';

part 'saved_library_provider.g.dart';

@riverpod
@riverpod
Future<Box<BookAdapter>> savedLibraryBox(SavedLibraryBoxRef ref) async {
  final Box<BookAdapter> box = await Hive.openBox<BookAdapter>('saved_library');
  ref.onDispose(() {
    box.close();
  });

  return box;
}
