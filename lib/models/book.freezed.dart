// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Book _$BookFromJson(Map<String, dynamic> json) {
  return _Book.fromJson(json);
}

/// @nodoc
mixin _$Book {
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @HiveField(0)
  set name(String value) => throw _privateConstructorUsedError;
  @HiveField(1)
  String get path => throw _privateConstructorUsedError;
  @HiveField(1)
  set path(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'download_url')
  @HiveField(2)
  String get downloadUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'download_url')
  @HiveField(2)
  set downloadUrl(String value) => throw _privateConstructorUsedError;
  @HiveField(3)
  int get size => throw _privateConstructorUsedError;
  @HiveField(3)
  set size(int value) => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  @HiveField(4)
  YearGroup? get yearGroup => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  @HiveField(4)
  set yearGroup(YearGroup? value) => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  @HiveField(5)
  String? get offlineCoverImage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  @HiveField(5)
  set offlineCoverImage(String? value) => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  @HiveField(6)
  String? get offlinePDFPath => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  @HiveField(6)
  set offlinePDFPath(String? value) => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  @HiveField(7)
  String? get offlineCoverImageDownloadTaskId =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  @HiveField(7)
  set offlineCoverImageDownloadTaskId(String? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  @HiveField(8)
  String? get pdfDownloadTaskId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  @HiveField(8)
  set pdfDownloadTaskId(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookCopyWith<Book> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res, Book>;
  @useResult
  $Res call(
      {@HiveField(0)
          String name,
      @HiveField(1)
          String path,
      @JsonKey(name: 'download_url')
      @HiveField(2)
          String downloadUrl,
      @HiveField(3)
          int size,
      @JsonKey(ignore: true)
      @HiveField(4)
          YearGroup? yearGroup,
      @JsonKey(ignore: true)
      @HiveField(5)
          String? offlineCoverImage,
      @JsonKey(ignore: true)
      @HiveField(6)
          String? offlinePDFPath,
      @JsonKey(ignore: true)
      @HiveField(7)
          String? offlineCoverImageDownloadTaskId,
      @JsonKey(ignore: true)
      @HiveField(8)
          String? pdfDownloadTaskId});
}

/// @nodoc
class _$BookCopyWithImpl<$Res, $Val extends Book>
    implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? path = null,
    Object? downloadUrl = null,
    Object? size = null,
    Object? yearGroup = freezed,
    Object? offlineCoverImage = freezed,
    Object? offlinePDFPath = freezed,
    Object? offlineCoverImageDownloadTaskId = freezed,
    Object? pdfDownloadTaskId = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      downloadUrl: null == downloadUrl
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      yearGroup: freezed == yearGroup
          ? _value.yearGroup
          : yearGroup // ignore: cast_nullable_to_non_nullable
              as YearGroup?,
      offlineCoverImage: freezed == offlineCoverImage
          ? _value.offlineCoverImage
          : offlineCoverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      offlinePDFPath: freezed == offlinePDFPath
          ? _value.offlinePDFPath
          : offlinePDFPath // ignore: cast_nullable_to_non_nullable
              as String?,
      offlineCoverImageDownloadTaskId: freezed ==
              offlineCoverImageDownloadTaskId
          ? _value.offlineCoverImageDownloadTaskId
          : offlineCoverImageDownloadTaskId // ignore: cast_nullable_to_non_nullable
              as String?,
      pdfDownloadTaskId: freezed == pdfDownloadTaskId
          ? _value.pdfDownloadTaskId
          : pdfDownloadTaskId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BookCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$$_BookCopyWith(_$_Book value, $Res Function(_$_Book) then) =
      __$$_BookCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0)
          String name,
      @HiveField(1)
          String path,
      @JsonKey(name: 'download_url')
      @HiveField(2)
          String downloadUrl,
      @HiveField(3)
          int size,
      @JsonKey(ignore: true)
      @HiveField(4)
          YearGroup? yearGroup,
      @JsonKey(ignore: true)
      @HiveField(5)
          String? offlineCoverImage,
      @JsonKey(ignore: true)
      @HiveField(6)
          String? offlinePDFPath,
      @JsonKey(ignore: true)
      @HiveField(7)
          String? offlineCoverImageDownloadTaskId,
      @JsonKey(ignore: true)
      @HiveField(8)
          String? pdfDownloadTaskId});
}

/// @nodoc
class __$$_BookCopyWithImpl<$Res> extends _$BookCopyWithImpl<$Res, _$_Book>
    implements _$$_BookCopyWith<$Res> {
  __$$_BookCopyWithImpl(_$_Book _value, $Res Function(_$_Book) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? path = null,
    Object? downloadUrl = null,
    Object? size = null,
    Object? yearGroup = freezed,
    Object? offlineCoverImage = freezed,
    Object? offlinePDFPath = freezed,
    Object? offlineCoverImageDownloadTaskId = freezed,
    Object? pdfDownloadTaskId = freezed,
  }) {
    return _then(_$_Book(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      downloadUrl: null == downloadUrl
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      yearGroup: freezed == yearGroup
          ? _value.yearGroup
          : yearGroup // ignore: cast_nullable_to_non_nullable
              as YearGroup?,
      offlineCoverImage: freezed == offlineCoverImage
          ? _value.offlineCoverImage
          : offlineCoverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      offlinePDFPath: freezed == offlinePDFPath
          ? _value.offlinePDFPath
          : offlinePDFPath // ignore: cast_nullable_to_non_nullable
              as String?,
      offlineCoverImageDownloadTaskId: freezed ==
              offlineCoverImageDownloadTaskId
          ? _value.offlineCoverImageDownloadTaskId
          : offlineCoverImageDownloadTaskId // ignore: cast_nullable_to_non_nullable
              as String?,
      pdfDownloadTaskId: freezed == pdfDownloadTaskId
          ? _value.pdfDownloadTaskId
          : pdfDownloadTaskId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Book extends _Book {
  _$_Book(
      {@HiveField(0) required this.name,
      @HiveField(1) required this.path,
      @JsonKey(name: 'download_url') @HiveField(2) required this.downloadUrl,
      @HiveField(3) required this.size,
      @JsonKey(ignore: true) @HiveField(4) this.yearGroup,
      @JsonKey(ignore: true) @HiveField(5) this.offlineCoverImage,
      @JsonKey(ignore: true) @HiveField(6) this.offlinePDFPath,
      @JsonKey(ignore: true) @HiveField(7) this.offlineCoverImageDownloadTaskId,
      @JsonKey(ignore: true) @HiveField(8) this.pdfDownloadTaskId})
      : super._();

  factory _$_Book.fromJson(Map<String, dynamic> json) => _$$_BookFromJson(json);

  @override
  @HiveField(0)
  String name;
  @override
  @HiveField(1)
  String path;
  @override
  @JsonKey(name: 'download_url')
  @HiveField(2)
  String downloadUrl;
  @override
  @HiveField(3)
  int size;
  @override
  @JsonKey(ignore: true)
  @HiveField(4)
  YearGroup? yearGroup;
  @override
  @JsonKey(ignore: true)
  @HiveField(5)
  String? offlineCoverImage;
  @override
  @JsonKey(ignore: true)
  @HiveField(6)
  String? offlinePDFPath;
  @override
  @JsonKey(ignore: true)
  @HiveField(7)
  String? offlineCoverImageDownloadTaskId;
  @override
  @JsonKey(ignore: true)
  @HiveField(8)
  String? pdfDownloadTaskId;

  @override
  String toString() {
    return 'Book(name: $name, path: $path, downloadUrl: $downloadUrl, size: $size, yearGroup: $yearGroup, offlineCoverImage: $offlineCoverImage, offlinePDFPath: $offlinePDFPath, offlineCoverImageDownloadTaskId: $offlineCoverImageDownloadTaskId, pdfDownloadTaskId: $pdfDownloadTaskId)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookCopyWith<_$_Book> get copyWith =>
      __$$_BookCopyWithImpl<_$_Book>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookToJson(
      this,
    );
  }
}

abstract class _Book extends Book {
  factory _Book(
      {@HiveField(0)
          required String name,
      @HiveField(1)
          required String path,
      @JsonKey(name: 'download_url')
      @HiveField(2)
          required String downloadUrl,
      @HiveField(3)
          required int size,
      @JsonKey(ignore: true)
      @HiveField(4)
          YearGroup? yearGroup,
      @JsonKey(ignore: true)
      @HiveField(5)
          String? offlineCoverImage,
      @JsonKey(ignore: true)
      @HiveField(6)
          String? offlinePDFPath,
      @JsonKey(ignore: true)
      @HiveField(7)
          String? offlineCoverImageDownloadTaskId,
      @JsonKey(ignore: true)
      @HiveField(8)
          String? pdfDownloadTaskId}) = _$_Book;
  _Book._() : super._();

  factory _Book.fromJson(Map<String, dynamic> json) = _$_Book.fromJson;

  @override
  @HiveField(0)
  String get name;
  @HiveField(0)
  set name(String value);
  @override
  @HiveField(1)
  String get path;
  @HiveField(1)
  set path(String value);
  @override
  @JsonKey(name: 'download_url')
  @HiveField(2)
  String get downloadUrl;
  @JsonKey(name: 'download_url')
  @HiveField(2)
  set downloadUrl(String value);
  @override
  @HiveField(3)
  int get size;
  @HiveField(3)
  set size(int value);
  @override
  @JsonKey(ignore: true)
  @HiveField(4)
  YearGroup? get yearGroup;
  @JsonKey(ignore: true)
  @HiveField(4)
  set yearGroup(YearGroup? value);
  @override
  @JsonKey(ignore: true)
  @HiveField(5)
  String? get offlineCoverImage;
  @JsonKey(ignore: true)
  @HiveField(5)
  set offlineCoverImage(String? value);
  @override
  @JsonKey(ignore: true)
  @HiveField(6)
  String? get offlinePDFPath;
  @JsonKey(ignore: true)
  @HiveField(6)
  set offlinePDFPath(String? value);
  @override
  @JsonKey(ignore: true)
  @HiveField(7)
  String? get offlineCoverImageDownloadTaskId;
  @JsonKey(ignore: true)
  @HiveField(7)
  set offlineCoverImageDownloadTaskId(String? value);
  @override
  @JsonKey(ignore: true)
  @HiveField(8)
  String? get pdfDownloadTaskId;
  @JsonKey(ignore: true)
  @HiveField(8)
  set pdfDownloadTaskId(String? value);
  @override
  @JsonKey(ignore: true)
  _$$_BookCopyWith<_$_Book> get copyWith => throw _privateConstructorUsedError;
}
