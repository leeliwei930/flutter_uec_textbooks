import 'package:hive/hive.dart';

import 'book.dart';

class BookAdapter extends TypeAdapter<Book> {
  @override
  Book read(BinaryReader reader) {
    return Book.fromJson(reader.readMap() as Map<String, dynamic>);
  }

  @override
  int get typeId => 0;

  @override
  void write(BinaryWriter writer, Book book) {
    writer.writeMap(book.toJson());
  }
}
