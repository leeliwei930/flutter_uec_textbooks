import 'package:easy_localization/easy_localization.dart';
import 'package:filesize/filesize.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:uec_textbooks_app/models/year_group.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@JsonSerializable(createFactory: false, createToJson: false)
@unfreezed
@HiveType(typeId: 0, adapterName: 'BookAdapter')
abstract class Book extends HiveObject with _$Book {
  Book._();
  factory Book({
    @HiveField(0) required String name,
    @HiveField(1) required String path,
    @JsonKey(name: 'download_url') @HiveField(2) required String downloadUrl,
    @HiveField(3) required int size,
    @JsonKey(ignore: true) @HiveField(4) YearGroup? yearGroup,
    @JsonKey(ignore: true) @HiveField(5) String? offlineCoverImage,
    @JsonKey(ignore: true) @HiveField(6) String? offlinePDFPath,
    @JsonKey(ignore: true) @HiveField(7) String? offlineCoverImageDownloadTaskId,
    @JsonKey(ignore: true) @HiveField(8) String? pdfDownloadTaskId,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);

  String get imageName => name.replaceFirst('.pdf', '.jpg');
  String get fileSizeForHuman => filesize(size);
  String get title => '${yearGroup?.name}.$name'.tr();
}
