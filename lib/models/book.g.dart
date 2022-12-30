// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Book _$BookFromJson(Map<String, dynamic> json) => Book(
      name: json['name'] as String,
      downloadUrl: json['download_url'] as String,
      size: json['size'] as int,
    );

Map<String, dynamic> _$BookToJson(Book instance) => <String, dynamic>{
      'name': instance.name,
      'download_url': instance.downloadUrl,
      'size': instance.size,
    };
