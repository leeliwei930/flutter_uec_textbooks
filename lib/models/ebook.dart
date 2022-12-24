import 'package:equatable/equatable.dart';
import 'package:filesize/filesize.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ebook.g.dart';

@JsonSerializable()
class Ebook extends Equatable {
  const Ebook({
    required this.name,
    required this.downloadUrl,
    required this.size,
  });
  factory Ebook.fromJson(Map<String, dynamic> json) => _$EbookFromJson(json);

  final String name;

  @JsonKey(name: 'download_url')
  final String downloadUrl;
  final int size;

  String get imageName => name.replaceFirst('.pdf', '.jpg');
  String get fileSizeForHuman => filesize(size);

  @override
  List<Object?> get props => [name, downloadUrl];
  Map<String, dynamic> toJson() => _$EbookToJson(this);
}
