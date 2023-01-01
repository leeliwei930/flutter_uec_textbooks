// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offline_books_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OfflineBookState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Book book) initial,
    required TResult Function(Book book) initiateDownload,
    required TResult Function(Book book, double progress) downloading,
    required TResult Function(Object? error, StackTrace? stackTrace)
        downloadFailed,
    required TResult Function(Book book) downloaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Book book)? initial,
    TResult? Function(Book book)? initiateDownload,
    TResult? Function(Book book, double progress)? downloading,
    TResult? Function(Object? error, StackTrace? stackTrace)? downloadFailed,
    TResult? Function(Book book)? downloaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Book book)? initial,
    TResult Function(Book book)? initiateDownload,
    TResult Function(Book book, double progress)? downloading,
    TResult Function(Object? error, StackTrace? stackTrace)? downloadFailed,
    TResult Function(Book book)? downloaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OfflineBookStateInitial value) initial,
    required TResult Function(OfflineBookStateInititateDownload value)
        initiateDownload,
    required TResult Function(OfflineBookStateDownloading value) downloading,
    required TResult Function(OfflineBookStateDownloadFailed value)
        downloadFailed,
    required TResult Function(OfflineBookStateDownloaded value) downloaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OfflineBookStateInitial value)? initial,
    TResult? Function(OfflineBookStateInititateDownload value)?
        initiateDownload,
    TResult? Function(OfflineBookStateDownloading value)? downloading,
    TResult? Function(OfflineBookStateDownloadFailed value)? downloadFailed,
    TResult? Function(OfflineBookStateDownloaded value)? downloaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OfflineBookStateInitial value)? initial,
    TResult Function(OfflineBookStateInititateDownload value)? initiateDownload,
    TResult Function(OfflineBookStateDownloading value)? downloading,
    TResult Function(OfflineBookStateDownloadFailed value)? downloadFailed,
    TResult Function(OfflineBookStateDownloaded value)? downloaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfflineBookStateCopyWith<$Res> {
  factory $OfflineBookStateCopyWith(
          OfflineBookState value, $Res Function(OfflineBookState) then) =
      _$OfflineBookStateCopyWithImpl<$Res, OfflineBookState>;
}

/// @nodoc
class _$OfflineBookStateCopyWithImpl<$Res, $Val extends OfflineBookState>
    implements $OfflineBookStateCopyWith<$Res> {
  _$OfflineBookStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OfflineBookStateInitialCopyWith<$Res> {
  factory _$$OfflineBookStateInitialCopyWith(_$OfflineBookStateInitial value,
          $Res Function(_$OfflineBookStateInitial) then) =
      __$$OfflineBookStateInitialCopyWithImpl<$Res>;
  @useResult
  $Res call({Book book});
}

/// @nodoc
class __$$OfflineBookStateInitialCopyWithImpl<$Res>
    extends _$OfflineBookStateCopyWithImpl<$Res, _$OfflineBookStateInitial>
    implements _$$OfflineBookStateInitialCopyWith<$Res> {
  __$$OfflineBookStateInitialCopyWithImpl(_$OfflineBookStateInitial _value,
      $Res Function(_$OfflineBookStateInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = null,
  }) {
    return _then(_$OfflineBookStateInitial(
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
    ));
  }
}

/// @nodoc

class _$OfflineBookStateInitial extends OfflineBookStateInitial {
  const _$OfflineBookStateInitial({required this.book}) : super._();

  @override
  final Book book;

  @override
  String toString() {
    return 'OfflineBookState.initial(book: $book)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfflineBookStateInitial &&
            (identical(other.book, book) || other.book == book));
  }

  @override
  int get hashCode => Object.hash(runtimeType, book);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfflineBookStateInitialCopyWith<_$OfflineBookStateInitial> get copyWith =>
      __$$OfflineBookStateInitialCopyWithImpl<_$OfflineBookStateInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Book book) initial,
    required TResult Function(Book book) initiateDownload,
    required TResult Function(Book book, double progress) downloading,
    required TResult Function(Object? error, StackTrace? stackTrace)
        downloadFailed,
    required TResult Function(Book book) downloaded,
  }) {
    return initial(book);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Book book)? initial,
    TResult? Function(Book book)? initiateDownload,
    TResult? Function(Book book, double progress)? downloading,
    TResult? Function(Object? error, StackTrace? stackTrace)? downloadFailed,
    TResult? Function(Book book)? downloaded,
  }) {
    return initial?.call(book);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Book book)? initial,
    TResult Function(Book book)? initiateDownload,
    TResult Function(Book book, double progress)? downloading,
    TResult Function(Object? error, StackTrace? stackTrace)? downloadFailed,
    TResult Function(Book book)? downloaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(book);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OfflineBookStateInitial value) initial,
    required TResult Function(OfflineBookStateInititateDownload value)
        initiateDownload,
    required TResult Function(OfflineBookStateDownloading value) downloading,
    required TResult Function(OfflineBookStateDownloadFailed value)
        downloadFailed,
    required TResult Function(OfflineBookStateDownloaded value) downloaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OfflineBookStateInitial value)? initial,
    TResult? Function(OfflineBookStateInititateDownload value)?
        initiateDownload,
    TResult? Function(OfflineBookStateDownloading value)? downloading,
    TResult? Function(OfflineBookStateDownloadFailed value)? downloadFailed,
    TResult? Function(OfflineBookStateDownloaded value)? downloaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OfflineBookStateInitial value)? initial,
    TResult Function(OfflineBookStateInititateDownload value)? initiateDownload,
    TResult Function(OfflineBookStateDownloading value)? downloading,
    TResult Function(OfflineBookStateDownloadFailed value)? downloadFailed,
    TResult Function(OfflineBookStateDownloaded value)? downloaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class OfflineBookStateInitial extends OfflineBookState {
  const factory OfflineBookStateInitial({required final Book book}) =
      _$OfflineBookStateInitial;
  const OfflineBookStateInitial._() : super._();

  Book get book;
  @JsonKey(ignore: true)
  _$$OfflineBookStateInitialCopyWith<_$OfflineBookStateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OfflineBookStateInititateDownloadCopyWith<$Res> {
  factory _$$OfflineBookStateInititateDownloadCopyWith(
          _$OfflineBookStateInititateDownload value,
          $Res Function(_$OfflineBookStateInititateDownload) then) =
      __$$OfflineBookStateInititateDownloadCopyWithImpl<$Res>;
  @useResult
  $Res call({Book book});
}

/// @nodoc
class __$$OfflineBookStateInititateDownloadCopyWithImpl<$Res>
    extends _$OfflineBookStateCopyWithImpl<$Res,
        _$OfflineBookStateInititateDownload>
    implements _$$OfflineBookStateInititateDownloadCopyWith<$Res> {
  __$$OfflineBookStateInititateDownloadCopyWithImpl(
      _$OfflineBookStateInititateDownload _value,
      $Res Function(_$OfflineBookStateInititateDownload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = null,
  }) {
    return _then(_$OfflineBookStateInititateDownload(
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
    ));
  }
}

/// @nodoc

class _$OfflineBookStateInititateDownload
    extends OfflineBookStateInititateDownload {
  const _$OfflineBookStateInititateDownload({required this.book}) : super._();

  @override
  final Book book;

  @override
  String toString() {
    return 'OfflineBookState.initiateDownload(book: $book)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfflineBookStateInititateDownload &&
            (identical(other.book, book) || other.book == book));
  }

  @override
  int get hashCode => Object.hash(runtimeType, book);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfflineBookStateInititateDownloadCopyWith<
          _$OfflineBookStateInititateDownload>
      get copyWith => __$$OfflineBookStateInititateDownloadCopyWithImpl<
          _$OfflineBookStateInititateDownload>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Book book) initial,
    required TResult Function(Book book) initiateDownload,
    required TResult Function(Book book, double progress) downloading,
    required TResult Function(Object? error, StackTrace? stackTrace)
        downloadFailed,
    required TResult Function(Book book) downloaded,
  }) {
    return initiateDownload(book);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Book book)? initial,
    TResult? Function(Book book)? initiateDownload,
    TResult? Function(Book book, double progress)? downloading,
    TResult? Function(Object? error, StackTrace? stackTrace)? downloadFailed,
    TResult? Function(Book book)? downloaded,
  }) {
    return initiateDownload?.call(book);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Book book)? initial,
    TResult Function(Book book)? initiateDownload,
    TResult Function(Book book, double progress)? downloading,
    TResult Function(Object? error, StackTrace? stackTrace)? downloadFailed,
    TResult Function(Book book)? downloaded,
    required TResult orElse(),
  }) {
    if (initiateDownload != null) {
      return initiateDownload(book);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OfflineBookStateInitial value) initial,
    required TResult Function(OfflineBookStateInititateDownload value)
        initiateDownload,
    required TResult Function(OfflineBookStateDownloading value) downloading,
    required TResult Function(OfflineBookStateDownloadFailed value)
        downloadFailed,
    required TResult Function(OfflineBookStateDownloaded value) downloaded,
  }) {
    return initiateDownload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OfflineBookStateInitial value)? initial,
    TResult? Function(OfflineBookStateInititateDownload value)?
        initiateDownload,
    TResult? Function(OfflineBookStateDownloading value)? downloading,
    TResult? Function(OfflineBookStateDownloadFailed value)? downloadFailed,
    TResult? Function(OfflineBookStateDownloaded value)? downloaded,
  }) {
    return initiateDownload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OfflineBookStateInitial value)? initial,
    TResult Function(OfflineBookStateInititateDownload value)? initiateDownload,
    TResult Function(OfflineBookStateDownloading value)? downloading,
    TResult Function(OfflineBookStateDownloadFailed value)? downloadFailed,
    TResult Function(OfflineBookStateDownloaded value)? downloaded,
    required TResult orElse(),
  }) {
    if (initiateDownload != null) {
      return initiateDownload(this);
    }
    return orElse();
  }
}

abstract class OfflineBookStateInititateDownload extends OfflineBookState {
  const factory OfflineBookStateInititateDownload({required final Book book}) =
      _$OfflineBookStateInititateDownload;
  const OfflineBookStateInititateDownload._() : super._();

  Book get book;
  @JsonKey(ignore: true)
  _$$OfflineBookStateInititateDownloadCopyWith<
          _$OfflineBookStateInititateDownload>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OfflineBookStateDownloadingCopyWith<$Res> {
  factory _$$OfflineBookStateDownloadingCopyWith(
          _$OfflineBookStateDownloading value,
          $Res Function(_$OfflineBookStateDownloading) then) =
      __$$OfflineBookStateDownloadingCopyWithImpl<$Res>;
  @useResult
  $Res call({Book book, double progress});
}

/// @nodoc
class __$$OfflineBookStateDownloadingCopyWithImpl<$Res>
    extends _$OfflineBookStateCopyWithImpl<$Res, _$OfflineBookStateDownloading>
    implements _$$OfflineBookStateDownloadingCopyWith<$Res> {
  __$$OfflineBookStateDownloadingCopyWithImpl(
      _$OfflineBookStateDownloading _value,
      $Res Function(_$OfflineBookStateDownloading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = null,
    Object? progress = null,
  }) {
    return _then(_$OfflineBookStateDownloading(
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$OfflineBookStateDownloading extends OfflineBookStateDownloading {
  const _$OfflineBookStateDownloading(
      {required this.book, required this.progress})
      : super._();

  @override
  final Book book;
  @override
  final double progress;

  @override
  String toString() {
    return 'OfflineBookState.downloading(book: $book, progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfflineBookStateDownloading &&
            (identical(other.book, book) || other.book == book) &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, book, progress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfflineBookStateDownloadingCopyWith<_$OfflineBookStateDownloading>
      get copyWith => __$$OfflineBookStateDownloadingCopyWithImpl<
          _$OfflineBookStateDownloading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Book book) initial,
    required TResult Function(Book book) initiateDownload,
    required TResult Function(Book book, double progress) downloading,
    required TResult Function(Object? error, StackTrace? stackTrace)
        downloadFailed,
    required TResult Function(Book book) downloaded,
  }) {
    return downloading(book, progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Book book)? initial,
    TResult? Function(Book book)? initiateDownload,
    TResult? Function(Book book, double progress)? downloading,
    TResult? Function(Object? error, StackTrace? stackTrace)? downloadFailed,
    TResult? Function(Book book)? downloaded,
  }) {
    return downloading?.call(book, progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Book book)? initial,
    TResult Function(Book book)? initiateDownload,
    TResult Function(Book book, double progress)? downloading,
    TResult Function(Object? error, StackTrace? stackTrace)? downloadFailed,
    TResult Function(Book book)? downloaded,
    required TResult orElse(),
  }) {
    if (downloading != null) {
      return downloading(book, progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OfflineBookStateInitial value) initial,
    required TResult Function(OfflineBookStateInititateDownload value)
        initiateDownload,
    required TResult Function(OfflineBookStateDownloading value) downloading,
    required TResult Function(OfflineBookStateDownloadFailed value)
        downloadFailed,
    required TResult Function(OfflineBookStateDownloaded value) downloaded,
  }) {
    return downloading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OfflineBookStateInitial value)? initial,
    TResult? Function(OfflineBookStateInititateDownload value)?
        initiateDownload,
    TResult? Function(OfflineBookStateDownloading value)? downloading,
    TResult? Function(OfflineBookStateDownloadFailed value)? downloadFailed,
    TResult? Function(OfflineBookStateDownloaded value)? downloaded,
  }) {
    return downloading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OfflineBookStateInitial value)? initial,
    TResult Function(OfflineBookStateInititateDownload value)? initiateDownload,
    TResult Function(OfflineBookStateDownloading value)? downloading,
    TResult Function(OfflineBookStateDownloadFailed value)? downloadFailed,
    TResult Function(OfflineBookStateDownloaded value)? downloaded,
    required TResult orElse(),
  }) {
    if (downloading != null) {
      return downloading(this);
    }
    return orElse();
  }
}

abstract class OfflineBookStateDownloading extends OfflineBookState {
  const factory OfflineBookStateDownloading(
      {required final Book book,
      required final double progress}) = _$OfflineBookStateDownloading;
  const OfflineBookStateDownloading._() : super._();

  Book get book;
  double get progress;
  @JsonKey(ignore: true)
  _$$OfflineBookStateDownloadingCopyWith<_$OfflineBookStateDownloading>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OfflineBookStateDownloadFailedCopyWith<$Res> {
  factory _$$OfflineBookStateDownloadFailedCopyWith(
          _$OfflineBookStateDownloadFailed value,
          $Res Function(_$OfflineBookStateDownloadFailed) then) =
      __$$OfflineBookStateDownloadFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? error, StackTrace? stackTrace});
}

/// @nodoc
class __$$OfflineBookStateDownloadFailedCopyWithImpl<$Res>
    extends _$OfflineBookStateCopyWithImpl<$Res,
        _$OfflineBookStateDownloadFailed>
    implements _$$OfflineBookStateDownloadFailedCopyWith<$Res> {
  __$$OfflineBookStateDownloadFailedCopyWithImpl(
      _$OfflineBookStateDownloadFailed _value,
      $Res Function(_$OfflineBookStateDownloadFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$OfflineBookStateDownloadFailed(
      error: freezed == error ? _value.error : error,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$OfflineBookStateDownloadFailed extends OfflineBookStateDownloadFailed {
  const _$OfflineBookStateDownloadFailed({this.error, this.stackTrace})
      : super._();

  @override
  final Object? error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'OfflineBookState.downloadFailed(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfflineBookStateDownloadFailed &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfflineBookStateDownloadFailedCopyWith<_$OfflineBookStateDownloadFailed>
      get copyWith => __$$OfflineBookStateDownloadFailedCopyWithImpl<
          _$OfflineBookStateDownloadFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Book book) initial,
    required TResult Function(Book book) initiateDownload,
    required TResult Function(Book book, double progress) downloading,
    required TResult Function(Object? error, StackTrace? stackTrace)
        downloadFailed,
    required TResult Function(Book book) downloaded,
  }) {
    return downloadFailed(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Book book)? initial,
    TResult? Function(Book book)? initiateDownload,
    TResult? Function(Book book, double progress)? downloading,
    TResult? Function(Object? error, StackTrace? stackTrace)? downloadFailed,
    TResult? Function(Book book)? downloaded,
  }) {
    return downloadFailed?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Book book)? initial,
    TResult Function(Book book)? initiateDownload,
    TResult Function(Book book, double progress)? downloading,
    TResult Function(Object? error, StackTrace? stackTrace)? downloadFailed,
    TResult Function(Book book)? downloaded,
    required TResult orElse(),
  }) {
    if (downloadFailed != null) {
      return downloadFailed(error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OfflineBookStateInitial value) initial,
    required TResult Function(OfflineBookStateInititateDownload value)
        initiateDownload,
    required TResult Function(OfflineBookStateDownloading value) downloading,
    required TResult Function(OfflineBookStateDownloadFailed value)
        downloadFailed,
    required TResult Function(OfflineBookStateDownloaded value) downloaded,
  }) {
    return downloadFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OfflineBookStateInitial value)? initial,
    TResult? Function(OfflineBookStateInititateDownload value)?
        initiateDownload,
    TResult? Function(OfflineBookStateDownloading value)? downloading,
    TResult? Function(OfflineBookStateDownloadFailed value)? downloadFailed,
    TResult? Function(OfflineBookStateDownloaded value)? downloaded,
  }) {
    return downloadFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OfflineBookStateInitial value)? initial,
    TResult Function(OfflineBookStateInititateDownload value)? initiateDownload,
    TResult Function(OfflineBookStateDownloading value)? downloading,
    TResult Function(OfflineBookStateDownloadFailed value)? downloadFailed,
    TResult Function(OfflineBookStateDownloaded value)? downloaded,
    required TResult orElse(),
  }) {
    if (downloadFailed != null) {
      return downloadFailed(this);
    }
    return orElse();
  }
}

abstract class OfflineBookStateDownloadFailed extends OfflineBookState {
  const factory OfflineBookStateDownloadFailed(
      {final Object? error,
      final StackTrace? stackTrace}) = _$OfflineBookStateDownloadFailed;
  const OfflineBookStateDownloadFailed._() : super._();

  Object? get error;
  StackTrace? get stackTrace;
  @JsonKey(ignore: true)
  _$$OfflineBookStateDownloadFailedCopyWith<_$OfflineBookStateDownloadFailed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OfflineBookStateDownloadedCopyWith<$Res> {
  factory _$$OfflineBookStateDownloadedCopyWith(
          _$OfflineBookStateDownloaded value,
          $Res Function(_$OfflineBookStateDownloaded) then) =
      __$$OfflineBookStateDownloadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Book book});
}

/// @nodoc
class __$$OfflineBookStateDownloadedCopyWithImpl<$Res>
    extends _$OfflineBookStateCopyWithImpl<$Res, _$OfflineBookStateDownloaded>
    implements _$$OfflineBookStateDownloadedCopyWith<$Res> {
  __$$OfflineBookStateDownloadedCopyWithImpl(
      _$OfflineBookStateDownloaded _value,
      $Res Function(_$OfflineBookStateDownloaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = null,
  }) {
    return _then(_$OfflineBookStateDownloaded(
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
    ));
  }
}

/// @nodoc

class _$OfflineBookStateDownloaded extends OfflineBookStateDownloaded {
  const _$OfflineBookStateDownloaded({required this.book}) : super._();

  @override
  final Book book;

  @override
  String toString() {
    return 'OfflineBookState.downloaded(book: $book)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfflineBookStateDownloaded &&
            (identical(other.book, book) || other.book == book));
  }

  @override
  int get hashCode => Object.hash(runtimeType, book);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfflineBookStateDownloadedCopyWith<_$OfflineBookStateDownloaded>
      get copyWith => __$$OfflineBookStateDownloadedCopyWithImpl<
          _$OfflineBookStateDownloaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Book book) initial,
    required TResult Function(Book book) initiateDownload,
    required TResult Function(Book book, double progress) downloading,
    required TResult Function(Object? error, StackTrace? stackTrace)
        downloadFailed,
    required TResult Function(Book book) downloaded,
  }) {
    return downloaded(book);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Book book)? initial,
    TResult? Function(Book book)? initiateDownload,
    TResult? Function(Book book, double progress)? downloading,
    TResult? Function(Object? error, StackTrace? stackTrace)? downloadFailed,
    TResult? Function(Book book)? downloaded,
  }) {
    return downloaded?.call(book);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Book book)? initial,
    TResult Function(Book book)? initiateDownload,
    TResult Function(Book book, double progress)? downloading,
    TResult Function(Object? error, StackTrace? stackTrace)? downloadFailed,
    TResult Function(Book book)? downloaded,
    required TResult orElse(),
  }) {
    if (downloaded != null) {
      return downloaded(book);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OfflineBookStateInitial value) initial,
    required TResult Function(OfflineBookStateInititateDownload value)
        initiateDownload,
    required TResult Function(OfflineBookStateDownloading value) downloading,
    required TResult Function(OfflineBookStateDownloadFailed value)
        downloadFailed,
    required TResult Function(OfflineBookStateDownloaded value) downloaded,
  }) {
    return downloaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OfflineBookStateInitial value)? initial,
    TResult? Function(OfflineBookStateInititateDownload value)?
        initiateDownload,
    TResult? Function(OfflineBookStateDownloading value)? downloading,
    TResult? Function(OfflineBookStateDownloadFailed value)? downloadFailed,
    TResult? Function(OfflineBookStateDownloaded value)? downloaded,
  }) {
    return downloaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OfflineBookStateInitial value)? initial,
    TResult Function(OfflineBookStateInititateDownload value)? initiateDownload,
    TResult Function(OfflineBookStateDownloading value)? downloading,
    TResult Function(OfflineBookStateDownloadFailed value)? downloadFailed,
    TResult Function(OfflineBookStateDownloaded value)? downloaded,
    required TResult orElse(),
  }) {
    if (downloaded != null) {
      return downloaded(this);
    }
    return orElse();
  }
}

abstract class OfflineBookStateDownloaded extends OfflineBookState {
  const factory OfflineBookStateDownloaded({required final Book book}) =
      _$OfflineBookStateDownloaded;
  const OfflineBookStateDownloaded._() : super._();

  Book get book;
  @JsonKey(ignore: true)
  _$$OfflineBookStateDownloadedCopyWith<_$OfflineBookStateDownloaded>
      get copyWith => throw _privateConstructorUsedError;
}
