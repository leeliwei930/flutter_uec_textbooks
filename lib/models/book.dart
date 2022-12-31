import 'package:easy_localization/easy_localization.dart';
import 'package:equatable/equatable.dart';
import 'package:filesize/filesize.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:uec_textbooks/models/year_group.dart';

part 'book.g.dart';

@HiveType(typeId: 0)
@JsonSerializable()
class Book extends Equatable {
  const Book({
    required this.name,
    required this.path,
    required this.downloadUrl,
    required this.size,
    this.yearGroup,
    this.offlineCoverImage,
    this.offlinePDFPath,
  });
  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);

  @HiveField(0)
  final String name;
  @HiveField(1)
  final String path;

  @HiveField(2)
  @JsonKey(name: 'download_url')
  final String downloadUrl;

  @HiveField(3)
  final int size;

  @HiveField(4)
  @JsonKey(ignore: true)
  final YearGroup? yearGroup;

  @HiveField(5)
  @JsonKey(ignore: true)
  final String? offlineCoverImage;

  @HiveField(6)
  @JsonKey(ignore: true)
  final String? offlinePDFPath;

  String get imageName => name.replaceFirst('.pdf', '.jpg');
  String get fileSizeForHuman => filesize(size);
  String get title => '${yearGroup?.name}.$name'.tr();

  @override
  List<Object?> get props => [name, downloadUrl];
  Map<String, dynamic> toJson() => _$BookToJson(this);
}
