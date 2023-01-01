// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookAdapter extends TypeAdapter<Book> {
  @override
  final int typeId = 0;

  @override
  Book read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Book(
      name: fields[0] as String,
      path: fields[1] as String,
      downloadUrl: fields[2] as String,
      size: fields[3] as int,
      yearGroup: fields[4] as YearGroup?,
      offlineCoverImage: fields[5] as String?,
      offlinePDFPath: fields[6] as String?,
      offlineCoverImageDownloadTaskId: fields[8] as String?,
      pdfDownloadTaskId: fields[7] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Book obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.path)
      ..writeByte(2)
      ..write(obj.downloadUrl)
      ..writeByte(3)
      ..write(obj.size)
      ..writeByte(4)
      ..write(obj.yearGroup)
      ..writeByte(5)
      ..write(obj.offlineCoverImage)
      ..writeByte(6)
      ..write(obj.offlinePDFPath)
      ..writeByte(7)
      ..write(obj.pdfDownloadTaskId)
      ..writeByte(8)
      ..write(obj.offlineCoverImageDownloadTaskId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Book _$BookFromJson(Map<String, dynamic> json) => Book(
      name: json['name'] as String,
      path: json['path'] as String,
      downloadUrl: json['download_url'] as String,
      size: json['size'] as int,
    );

Map<String, dynamic> _$BookToJson(Book instance) => <String, dynamic>{
      'name': instance.name,
      'path': instance.path,
      'download_url': instance.downloadUrl,
      'size': instance.size,
    };
