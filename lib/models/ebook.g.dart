// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ebook.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ebook _$EbookFromJson(Map<String, dynamic> json) => Ebook(
      name: json['name'] as String,
      downloadUrl: json['download_url'] as String,
      size: json['size'] as int,
    );

Map<String, dynamic> _$EbookToJson(Ebook instance) => <String, dynamic>{
      'name': instance.name,
      'download_url': instance.downloadUrl,
      'size': instance.size,
    };
