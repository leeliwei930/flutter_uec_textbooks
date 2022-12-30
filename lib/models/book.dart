import 'package:easy_localization/easy_localization.dart';
import 'package:equatable/equatable.dart';
import 'package:filesize/filesize.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:uec_textbooks/models/year_group.dart';

part 'book.g.dart';

@JsonSerializable()
class Book extends Equatable {
  const Book({
    required this.name,
    required this.downloadUrl,
    required this.size,
    this.yearGroup,
  });
  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);

  final String name;

  @JsonKey(name: 'download_url')
  final String downloadUrl;
  final int size;

  @JsonKey(ignore: true)
  final YearGroup? yearGroup;

  String get imageName => name.replaceFirst('.pdf', '.jpg');
  String get fileSizeForHuman => filesize(size);
  String get title => '${yearGroup?.name}.$name'.tr();

  @override
  List<Object?> get props => [name, downloadUrl];
  Map<String, dynamic> toJson() => _$BookToJson(this);
}
