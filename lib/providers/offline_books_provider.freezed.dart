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
mixin _$OfflineBookDownloadState {
  Book get book => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Book book) checking,
    required TResult Function(Book book) downloadRequired,
    required TResult Function(Book book, double progress) downloading,
    required TResult Function(Book book, double progress) paused,
    required TResult Function(Book book, Object? error, StackTrace? stackTrace)
        failed,
    required TResult Function(Book book) completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Book book)? checking,
    TResult? Function(Book book)? downloadRequired,
    TResult? Function(Book book, double progress)? downloading,
    TResult? Function(Book book, double progress)? paused,
    TResult? Function(Book book, Object? error, StackTrace? stackTrace)? failed,
    TResult? Function(Book book)? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Book book)? checking,
    TResult Function(Book book)? downloadRequired,
    TResult Function(Book book, double progress)? downloading,
    TResult Function(Book book, double progress)? paused,
    TResult Function(Book book, Object? error, StackTrace? stackTrace)? failed,
    TResult Function(Book book)? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OfflineBookDownloadStateDownloadChecking value)
        checking,
    required TResult Function(OfflineBookDownloadStateDownloadRequired value)
        downloadRequired,
    required TResult Function(OfflineBookDownloadStateDownloading value)
        downloading,
    required TResult Function(OfflineBookDownloadStatePaused value) paused,
    required TResult Function(OfflineBookDownloadStateFailed value) failed,
    required TResult Function(OfflineBookDownStateCompleted value) completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OfflineBookDownloadStateDownloadChecking value)? checking,
    TResult? Function(OfflineBookDownloadStateDownloadRequired value)?
        downloadRequired,
    TResult? Function(OfflineBookDownloadStateDownloading value)? downloading,
    TResult? Function(OfflineBookDownloadStatePaused value)? paused,
    TResult? Function(OfflineBookDownloadStateFailed value)? failed,
    TResult? Function(OfflineBookDownStateCompleted value)? completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OfflineBookDownloadStateDownloadChecking value)? checking,
    TResult Function(OfflineBookDownloadStateDownloadRequired value)?
        downloadRequired,
    TResult Function(OfflineBookDownloadStateDownloading value)? downloading,
    TResult Function(OfflineBookDownloadStatePaused value)? paused,
    TResult Function(OfflineBookDownloadStateFailed value)? failed,
    TResult Function(OfflineBookDownStateCompleted value)? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OfflineBookDownloadStateCopyWith<OfflineBookDownloadState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfflineBookDownloadStateCopyWith<$Res> {
  factory $OfflineBookDownloadStateCopyWith(OfflineBookDownloadState value,
          $Res Function(OfflineBookDownloadState) then) =
      _$OfflineBookDownloadStateCopyWithImpl<$Res, OfflineBookDownloadState>;
  @useResult
  $Res call({Book book});

  $BookCopyWith<$Res> get book;
}

/// @nodoc
class _$OfflineBookDownloadStateCopyWithImpl<$Res,
        $Val extends OfflineBookDownloadState>
    implements $OfflineBookDownloadStateCopyWith<$Res> {
  _$OfflineBookDownloadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = null,
  }) {
    return _then(_value.copyWith(
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookCopyWith<$Res> get book {
    return $BookCopyWith<$Res>(_value.book, (value) {
      return _then(_value.copyWith(book: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OfflineBookDownloadStateDownloadCheckingCopyWith<$Res>
    implements $OfflineBookDownloadStateCopyWith<$Res> {
  factory _$$OfflineBookDownloadStateDownloadCheckingCopyWith(
          _$OfflineBookDownloadStateDownloadChecking value,
          $Res Function(_$OfflineBookDownloadStateDownloadChecking) then) =
      __$$OfflineBookDownloadStateDownloadCheckingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Book book});

  @override
  $BookCopyWith<$Res> get book;
}

/// @nodoc
class __$$OfflineBookDownloadStateDownloadCheckingCopyWithImpl<$Res>
    extends _$OfflineBookDownloadStateCopyWithImpl<$Res,
        _$OfflineBookDownloadStateDownloadChecking>
    implements _$$OfflineBookDownloadStateDownloadCheckingCopyWith<$Res> {
  __$$OfflineBookDownloadStateDownloadCheckingCopyWithImpl(
      _$OfflineBookDownloadStateDownloadChecking _value,
      $Res Function(_$OfflineBookDownloadStateDownloadChecking) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = null,
  }) {
    return _then(_$OfflineBookDownloadStateDownloadChecking(
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
    ));
  }
}

/// @nodoc

class _$OfflineBookDownloadStateDownloadChecking
    extends OfflineBookDownloadStateDownloadChecking {
  const _$OfflineBookDownloadStateDownloadChecking({required this.book})
      : super._();

  @override
  final Book book;

  @override
  String toString() {
    return 'OfflineBookDownloadState.checking(book: $book)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfflineBookDownloadStateDownloadChecking &&
            (identical(other.book, book) || other.book == book));
  }

  @override
  int get hashCode => Object.hash(runtimeType, book);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfflineBookDownloadStateDownloadCheckingCopyWith<
          _$OfflineBookDownloadStateDownloadChecking>
      get copyWith => __$$OfflineBookDownloadStateDownloadCheckingCopyWithImpl<
          _$OfflineBookDownloadStateDownloadChecking>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Book book) checking,
    required TResult Function(Book book) downloadRequired,
    required TResult Function(Book book, double progress) downloading,
    required TResult Function(Book book, double progress) paused,
    required TResult Function(Book book, Object? error, StackTrace? stackTrace)
        failed,
    required TResult Function(Book book) completed,
  }) {
    return checking(book);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Book book)? checking,
    TResult? Function(Book book)? downloadRequired,
    TResult? Function(Book book, double progress)? downloading,
    TResult? Function(Book book, double progress)? paused,
    TResult? Function(Book book, Object? error, StackTrace? stackTrace)? failed,
    TResult? Function(Book book)? completed,
  }) {
    return checking?.call(book);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Book book)? checking,
    TResult Function(Book book)? downloadRequired,
    TResult Function(Book book, double progress)? downloading,
    TResult Function(Book book, double progress)? paused,
    TResult Function(Book book, Object? error, StackTrace? stackTrace)? failed,
    TResult Function(Book book)? completed,
    required TResult orElse(),
  }) {
    if (checking != null) {
      return checking(book);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OfflineBookDownloadStateDownloadChecking value)
        checking,
    required TResult Function(OfflineBookDownloadStateDownloadRequired value)
        downloadRequired,
    required TResult Function(OfflineBookDownloadStateDownloading value)
        downloading,
    required TResult Function(OfflineBookDownloadStatePaused value) paused,
    required TResult Function(OfflineBookDownloadStateFailed value) failed,
    required TResult Function(OfflineBookDownStateCompleted value) completed,
  }) {
    return checking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OfflineBookDownloadStateDownloadChecking value)? checking,
    TResult? Function(OfflineBookDownloadStateDownloadRequired value)?
        downloadRequired,
    TResult? Function(OfflineBookDownloadStateDownloading value)? downloading,
    TResult? Function(OfflineBookDownloadStatePaused value)? paused,
    TResult? Function(OfflineBookDownloadStateFailed value)? failed,
    TResult? Function(OfflineBookDownStateCompleted value)? completed,
  }) {
    return checking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OfflineBookDownloadStateDownloadChecking value)? checking,
    TResult Function(OfflineBookDownloadStateDownloadRequired value)?
        downloadRequired,
    TResult Function(OfflineBookDownloadStateDownloading value)? downloading,
    TResult Function(OfflineBookDownloadStatePaused value)? paused,
    TResult Function(OfflineBookDownloadStateFailed value)? failed,
    TResult Function(OfflineBookDownStateCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (checking != null) {
      return checking(this);
    }
    return orElse();
  }
}

abstract class OfflineBookDownloadStateDownloadChecking
    extends OfflineBookDownloadState {
  const factory OfflineBookDownloadStateDownloadChecking(
      {required final Book book}) = _$OfflineBookDownloadStateDownloadChecking;
  const OfflineBookDownloadStateDownloadChecking._() : super._();

  @override
  Book get book;
  @override
  @JsonKey(ignore: true)
  _$$OfflineBookDownloadStateDownloadCheckingCopyWith<
          _$OfflineBookDownloadStateDownloadChecking>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OfflineBookDownloadStateDownloadRequiredCopyWith<$Res>
    implements $OfflineBookDownloadStateCopyWith<$Res> {
  factory _$$OfflineBookDownloadStateDownloadRequiredCopyWith(
          _$OfflineBookDownloadStateDownloadRequired value,
          $Res Function(_$OfflineBookDownloadStateDownloadRequired) then) =
      __$$OfflineBookDownloadStateDownloadRequiredCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Book book});

  @override
  $BookCopyWith<$Res> get book;
}

/// @nodoc
class __$$OfflineBookDownloadStateDownloadRequiredCopyWithImpl<$Res>
    extends _$OfflineBookDownloadStateCopyWithImpl<$Res,
        _$OfflineBookDownloadStateDownloadRequired>
    implements _$$OfflineBookDownloadStateDownloadRequiredCopyWith<$Res> {
  __$$OfflineBookDownloadStateDownloadRequiredCopyWithImpl(
      _$OfflineBookDownloadStateDownloadRequired _value,
      $Res Function(_$OfflineBookDownloadStateDownloadRequired) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = null,
  }) {
    return _then(_$OfflineBookDownloadStateDownloadRequired(
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
    ));
  }
}

/// @nodoc

class _$OfflineBookDownloadStateDownloadRequired
    extends OfflineBookDownloadStateDownloadRequired {
  const _$OfflineBookDownloadStateDownloadRequired({required this.book})
      : super._();

  @override
  final Book book;

  @override
  String toString() {
    return 'OfflineBookDownloadState.downloadRequired(book: $book)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfflineBookDownloadStateDownloadRequired &&
            (identical(other.book, book) || other.book == book));
  }

  @override
  int get hashCode => Object.hash(runtimeType, book);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfflineBookDownloadStateDownloadRequiredCopyWith<
          _$OfflineBookDownloadStateDownloadRequired>
      get copyWith => __$$OfflineBookDownloadStateDownloadRequiredCopyWithImpl<
          _$OfflineBookDownloadStateDownloadRequired>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Book book) checking,
    required TResult Function(Book book) downloadRequired,
    required TResult Function(Book book, double progress) downloading,
    required TResult Function(Book book, double progress) paused,
    required TResult Function(Book book, Object? error, StackTrace? stackTrace)
        failed,
    required TResult Function(Book book) completed,
  }) {
    return downloadRequired(book);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Book book)? checking,
    TResult? Function(Book book)? downloadRequired,
    TResult? Function(Book book, double progress)? downloading,
    TResult? Function(Book book, double progress)? paused,
    TResult? Function(Book book, Object? error, StackTrace? stackTrace)? failed,
    TResult? Function(Book book)? completed,
  }) {
    return downloadRequired?.call(book);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Book book)? checking,
    TResult Function(Book book)? downloadRequired,
    TResult Function(Book book, double progress)? downloading,
    TResult Function(Book book, double progress)? paused,
    TResult Function(Book book, Object? error, StackTrace? stackTrace)? failed,
    TResult Function(Book book)? completed,
    required TResult orElse(),
  }) {
    if (downloadRequired != null) {
      return downloadRequired(book);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OfflineBookDownloadStateDownloadChecking value)
        checking,
    required TResult Function(OfflineBookDownloadStateDownloadRequired value)
        downloadRequired,
    required TResult Function(OfflineBookDownloadStateDownloading value)
        downloading,
    required TResult Function(OfflineBookDownloadStatePaused value) paused,
    required TResult Function(OfflineBookDownloadStateFailed value) failed,
    required TResult Function(OfflineBookDownStateCompleted value) completed,
  }) {
    return downloadRequired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OfflineBookDownloadStateDownloadChecking value)? checking,
    TResult? Function(OfflineBookDownloadStateDownloadRequired value)?
        downloadRequired,
    TResult? Function(OfflineBookDownloadStateDownloading value)? downloading,
    TResult? Function(OfflineBookDownloadStatePaused value)? paused,
    TResult? Function(OfflineBookDownloadStateFailed value)? failed,
    TResult? Function(OfflineBookDownStateCompleted value)? completed,
  }) {
    return downloadRequired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OfflineBookDownloadStateDownloadChecking value)? checking,
    TResult Function(OfflineBookDownloadStateDownloadRequired value)?
        downloadRequired,
    TResult Function(OfflineBookDownloadStateDownloading value)? downloading,
    TResult Function(OfflineBookDownloadStatePaused value)? paused,
    TResult Function(OfflineBookDownloadStateFailed value)? failed,
    TResult Function(OfflineBookDownStateCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (downloadRequired != null) {
      return downloadRequired(this);
    }
    return orElse();
  }
}

abstract class OfflineBookDownloadStateDownloadRequired
    extends OfflineBookDownloadState {
  const factory OfflineBookDownloadStateDownloadRequired(
      {required final Book book}) = _$OfflineBookDownloadStateDownloadRequired;
  const OfflineBookDownloadStateDownloadRequired._() : super._();

  @override
  Book get book;
  @override
  @JsonKey(ignore: true)
  _$$OfflineBookDownloadStateDownloadRequiredCopyWith<
          _$OfflineBookDownloadStateDownloadRequired>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OfflineBookDownloadStateDownloadingCopyWith<$Res>
    implements $OfflineBookDownloadStateCopyWith<$Res> {
  factory _$$OfflineBookDownloadStateDownloadingCopyWith(
          _$OfflineBookDownloadStateDownloading value,
          $Res Function(_$OfflineBookDownloadStateDownloading) then) =
      __$$OfflineBookDownloadStateDownloadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Book book, double progress});

  @override
  $BookCopyWith<$Res> get book;
}

/// @nodoc
class __$$OfflineBookDownloadStateDownloadingCopyWithImpl<$Res>
    extends _$OfflineBookDownloadStateCopyWithImpl<$Res,
        _$OfflineBookDownloadStateDownloading>
    implements _$$OfflineBookDownloadStateDownloadingCopyWith<$Res> {
  __$$OfflineBookDownloadStateDownloadingCopyWithImpl(
      _$OfflineBookDownloadStateDownloading _value,
      $Res Function(_$OfflineBookDownloadStateDownloading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = null,
    Object? progress = null,
  }) {
    return _then(_$OfflineBookDownloadStateDownloading(
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

class _$OfflineBookDownloadStateDownloading
    extends OfflineBookDownloadStateDownloading {
  const _$OfflineBookDownloadStateDownloading(
      {required this.book, required this.progress})
      : super._();

  @override
  final Book book;
  @override
  final double progress;

  @override
  String toString() {
    return 'OfflineBookDownloadState.downloading(book: $book, progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfflineBookDownloadStateDownloading &&
            (identical(other.book, book) || other.book == book) &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, book, progress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfflineBookDownloadStateDownloadingCopyWith<
          _$OfflineBookDownloadStateDownloading>
      get copyWith => __$$OfflineBookDownloadStateDownloadingCopyWithImpl<
          _$OfflineBookDownloadStateDownloading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Book book) checking,
    required TResult Function(Book book) downloadRequired,
    required TResult Function(Book book, double progress) downloading,
    required TResult Function(Book book, double progress) paused,
    required TResult Function(Book book, Object? error, StackTrace? stackTrace)
        failed,
    required TResult Function(Book book) completed,
  }) {
    return downloading(book, progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Book book)? checking,
    TResult? Function(Book book)? downloadRequired,
    TResult? Function(Book book, double progress)? downloading,
    TResult? Function(Book book, double progress)? paused,
    TResult? Function(Book book, Object? error, StackTrace? stackTrace)? failed,
    TResult? Function(Book book)? completed,
  }) {
    return downloading?.call(book, progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Book book)? checking,
    TResult Function(Book book)? downloadRequired,
    TResult Function(Book book, double progress)? downloading,
    TResult Function(Book book, double progress)? paused,
    TResult Function(Book book, Object? error, StackTrace? stackTrace)? failed,
    TResult Function(Book book)? completed,
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
    required TResult Function(OfflineBookDownloadStateDownloadChecking value)
        checking,
    required TResult Function(OfflineBookDownloadStateDownloadRequired value)
        downloadRequired,
    required TResult Function(OfflineBookDownloadStateDownloading value)
        downloading,
    required TResult Function(OfflineBookDownloadStatePaused value) paused,
    required TResult Function(OfflineBookDownloadStateFailed value) failed,
    required TResult Function(OfflineBookDownStateCompleted value) completed,
  }) {
    return downloading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OfflineBookDownloadStateDownloadChecking value)? checking,
    TResult? Function(OfflineBookDownloadStateDownloadRequired value)?
        downloadRequired,
    TResult? Function(OfflineBookDownloadStateDownloading value)? downloading,
    TResult? Function(OfflineBookDownloadStatePaused value)? paused,
    TResult? Function(OfflineBookDownloadStateFailed value)? failed,
    TResult? Function(OfflineBookDownStateCompleted value)? completed,
  }) {
    return downloading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OfflineBookDownloadStateDownloadChecking value)? checking,
    TResult Function(OfflineBookDownloadStateDownloadRequired value)?
        downloadRequired,
    TResult Function(OfflineBookDownloadStateDownloading value)? downloading,
    TResult Function(OfflineBookDownloadStatePaused value)? paused,
    TResult Function(OfflineBookDownloadStateFailed value)? failed,
    TResult Function(OfflineBookDownStateCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (downloading != null) {
      return downloading(this);
    }
    return orElse();
  }
}

abstract class OfflineBookDownloadStateDownloading
    extends OfflineBookDownloadState {
  const factory OfflineBookDownloadStateDownloading(
      {required final Book book,
      required final double progress}) = _$OfflineBookDownloadStateDownloading;
  const OfflineBookDownloadStateDownloading._() : super._();

  @override
  Book get book;
  double get progress;
  @override
  @JsonKey(ignore: true)
  _$$OfflineBookDownloadStateDownloadingCopyWith<
          _$OfflineBookDownloadStateDownloading>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OfflineBookDownloadStatePausedCopyWith<$Res>
    implements $OfflineBookDownloadStateCopyWith<$Res> {
  factory _$$OfflineBookDownloadStatePausedCopyWith(
          _$OfflineBookDownloadStatePaused value,
          $Res Function(_$OfflineBookDownloadStatePaused) then) =
      __$$OfflineBookDownloadStatePausedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Book book, double progress});

  @override
  $BookCopyWith<$Res> get book;
}

/// @nodoc
class __$$OfflineBookDownloadStatePausedCopyWithImpl<$Res>
    extends _$OfflineBookDownloadStateCopyWithImpl<$Res,
        _$OfflineBookDownloadStatePaused>
    implements _$$OfflineBookDownloadStatePausedCopyWith<$Res> {
  __$$OfflineBookDownloadStatePausedCopyWithImpl(
      _$OfflineBookDownloadStatePaused _value,
      $Res Function(_$OfflineBookDownloadStatePaused) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = null,
    Object? progress = null,
  }) {
    return _then(_$OfflineBookDownloadStatePaused(
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

class _$OfflineBookDownloadStatePaused extends OfflineBookDownloadStatePaused {
  const _$OfflineBookDownloadStatePaused(
      {required this.book, required this.progress})
      : super._();

  @override
  final Book book;
  @override
  final double progress;

  @override
  String toString() {
    return 'OfflineBookDownloadState.paused(book: $book, progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfflineBookDownloadStatePaused &&
            (identical(other.book, book) || other.book == book) &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, book, progress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfflineBookDownloadStatePausedCopyWith<_$OfflineBookDownloadStatePaused>
      get copyWith => __$$OfflineBookDownloadStatePausedCopyWithImpl<
          _$OfflineBookDownloadStatePaused>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Book book) checking,
    required TResult Function(Book book) downloadRequired,
    required TResult Function(Book book, double progress) downloading,
    required TResult Function(Book book, double progress) paused,
    required TResult Function(Book book, Object? error, StackTrace? stackTrace)
        failed,
    required TResult Function(Book book) completed,
  }) {
    return paused(book, progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Book book)? checking,
    TResult? Function(Book book)? downloadRequired,
    TResult? Function(Book book, double progress)? downloading,
    TResult? Function(Book book, double progress)? paused,
    TResult? Function(Book book, Object? error, StackTrace? stackTrace)? failed,
    TResult? Function(Book book)? completed,
  }) {
    return paused?.call(book, progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Book book)? checking,
    TResult Function(Book book)? downloadRequired,
    TResult Function(Book book, double progress)? downloading,
    TResult Function(Book book, double progress)? paused,
    TResult Function(Book book, Object? error, StackTrace? stackTrace)? failed,
    TResult Function(Book book)? completed,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(book, progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OfflineBookDownloadStateDownloadChecking value)
        checking,
    required TResult Function(OfflineBookDownloadStateDownloadRequired value)
        downloadRequired,
    required TResult Function(OfflineBookDownloadStateDownloading value)
        downloading,
    required TResult Function(OfflineBookDownloadStatePaused value) paused,
    required TResult Function(OfflineBookDownloadStateFailed value) failed,
    required TResult Function(OfflineBookDownStateCompleted value) completed,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OfflineBookDownloadStateDownloadChecking value)? checking,
    TResult? Function(OfflineBookDownloadStateDownloadRequired value)?
        downloadRequired,
    TResult? Function(OfflineBookDownloadStateDownloading value)? downloading,
    TResult? Function(OfflineBookDownloadStatePaused value)? paused,
    TResult? Function(OfflineBookDownloadStateFailed value)? failed,
    TResult? Function(OfflineBookDownStateCompleted value)? completed,
  }) {
    return paused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OfflineBookDownloadStateDownloadChecking value)? checking,
    TResult Function(OfflineBookDownloadStateDownloadRequired value)?
        downloadRequired,
    TResult Function(OfflineBookDownloadStateDownloading value)? downloading,
    TResult Function(OfflineBookDownloadStatePaused value)? paused,
    TResult Function(OfflineBookDownloadStateFailed value)? failed,
    TResult Function(OfflineBookDownStateCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class OfflineBookDownloadStatePaused extends OfflineBookDownloadState {
  const factory OfflineBookDownloadStatePaused(
      {required final Book book,
      required final double progress}) = _$OfflineBookDownloadStatePaused;
  const OfflineBookDownloadStatePaused._() : super._();

  @override
  Book get book;
  double get progress;
  @override
  @JsonKey(ignore: true)
  _$$OfflineBookDownloadStatePausedCopyWith<_$OfflineBookDownloadStatePaused>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OfflineBookDownloadStateFailedCopyWith<$Res>
    implements $OfflineBookDownloadStateCopyWith<$Res> {
  factory _$$OfflineBookDownloadStateFailedCopyWith(
          _$OfflineBookDownloadStateFailed value,
          $Res Function(_$OfflineBookDownloadStateFailed) then) =
      __$$OfflineBookDownloadStateFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Book book, Object? error, StackTrace? stackTrace});

  @override
  $BookCopyWith<$Res> get book;
}

/// @nodoc
class __$$OfflineBookDownloadStateFailedCopyWithImpl<$Res>
    extends _$OfflineBookDownloadStateCopyWithImpl<$Res,
        _$OfflineBookDownloadStateFailed>
    implements _$$OfflineBookDownloadStateFailedCopyWith<$Res> {
  __$$OfflineBookDownloadStateFailedCopyWithImpl(
      _$OfflineBookDownloadStateFailed _value,
      $Res Function(_$OfflineBookDownloadStateFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = null,
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$OfflineBookDownloadStateFailed(
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
      error: freezed == error ? _value.error : error,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$OfflineBookDownloadStateFailed extends OfflineBookDownloadStateFailed {
  const _$OfflineBookDownloadStateFailed(
      {required this.book, this.error, this.stackTrace})
      : super._();

  @override
  final Book book;
  @override
  final Object? error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'OfflineBookDownloadState.failed(book: $book, error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfflineBookDownloadStateFailed &&
            (identical(other.book, book) || other.book == book) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, book,
      const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfflineBookDownloadStateFailedCopyWith<_$OfflineBookDownloadStateFailed>
      get copyWith => __$$OfflineBookDownloadStateFailedCopyWithImpl<
          _$OfflineBookDownloadStateFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Book book) checking,
    required TResult Function(Book book) downloadRequired,
    required TResult Function(Book book, double progress) downloading,
    required TResult Function(Book book, double progress) paused,
    required TResult Function(Book book, Object? error, StackTrace? stackTrace)
        failed,
    required TResult Function(Book book) completed,
  }) {
    return failed(book, error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Book book)? checking,
    TResult? Function(Book book)? downloadRequired,
    TResult? Function(Book book, double progress)? downloading,
    TResult? Function(Book book, double progress)? paused,
    TResult? Function(Book book, Object? error, StackTrace? stackTrace)? failed,
    TResult? Function(Book book)? completed,
  }) {
    return failed?.call(book, error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Book book)? checking,
    TResult Function(Book book)? downloadRequired,
    TResult Function(Book book, double progress)? downloading,
    TResult Function(Book book, double progress)? paused,
    TResult Function(Book book, Object? error, StackTrace? stackTrace)? failed,
    TResult Function(Book book)? completed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(book, error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OfflineBookDownloadStateDownloadChecking value)
        checking,
    required TResult Function(OfflineBookDownloadStateDownloadRequired value)
        downloadRequired,
    required TResult Function(OfflineBookDownloadStateDownloading value)
        downloading,
    required TResult Function(OfflineBookDownloadStatePaused value) paused,
    required TResult Function(OfflineBookDownloadStateFailed value) failed,
    required TResult Function(OfflineBookDownStateCompleted value) completed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OfflineBookDownloadStateDownloadChecking value)? checking,
    TResult? Function(OfflineBookDownloadStateDownloadRequired value)?
        downloadRequired,
    TResult? Function(OfflineBookDownloadStateDownloading value)? downloading,
    TResult? Function(OfflineBookDownloadStatePaused value)? paused,
    TResult? Function(OfflineBookDownloadStateFailed value)? failed,
    TResult? Function(OfflineBookDownStateCompleted value)? completed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OfflineBookDownloadStateDownloadChecking value)? checking,
    TResult Function(OfflineBookDownloadStateDownloadRequired value)?
        downloadRequired,
    TResult Function(OfflineBookDownloadStateDownloading value)? downloading,
    TResult Function(OfflineBookDownloadStatePaused value)? paused,
    TResult Function(OfflineBookDownloadStateFailed value)? failed,
    TResult Function(OfflineBookDownStateCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class OfflineBookDownloadStateFailed extends OfflineBookDownloadState {
  const factory OfflineBookDownloadStateFailed(
      {required final Book book,
      final Object? error,
      final StackTrace? stackTrace}) = _$OfflineBookDownloadStateFailed;
  const OfflineBookDownloadStateFailed._() : super._();

  @override
  Book get book;
  Object? get error;
  StackTrace? get stackTrace;
  @override
  @JsonKey(ignore: true)
  _$$OfflineBookDownloadStateFailedCopyWith<_$OfflineBookDownloadStateFailed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OfflineBookDownStateCompletedCopyWith<$Res>
    implements $OfflineBookDownloadStateCopyWith<$Res> {
  factory _$$OfflineBookDownStateCompletedCopyWith(
          _$OfflineBookDownStateCompleted value,
          $Res Function(_$OfflineBookDownStateCompleted) then) =
      __$$OfflineBookDownStateCompletedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Book book});

  @override
  $BookCopyWith<$Res> get book;
}

/// @nodoc
class __$$OfflineBookDownStateCompletedCopyWithImpl<$Res>
    extends _$OfflineBookDownloadStateCopyWithImpl<$Res,
        _$OfflineBookDownStateCompleted>
    implements _$$OfflineBookDownStateCompletedCopyWith<$Res> {
  __$$OfflineBookDownStateCompletedCopyWithImpl(
      _$OfflineBookDownStateCompleted _value,
      $Res Function(_$OfflineBookDownStateCompleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = null,
  }) {
    return _then(_$OfflineBookDownStateCompleted(
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
    ));
  }
}

/// @nodoc

class _$OfflineBookDownStateCompleted extends OfflineBookDownStateCompleted {
  const _$OfflineBookDownStateCompleted({required this.book}) : super._();

  @override
  final Book book;

  @override
  String toString() {
    return 'OfflineBookDownloadState.completed(book: $book)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfflineBookDownStateCompleted &&
            (identical(other.book, book) || other.book == book));
  }

  @override
  int get hashCode => Object.hash(runtimeType, book);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfflineBookDownStateCompletedCopyWith<_$OfflineBookDownStateCompleted>
      get copyWith => __$$OfflineBookDownStateCompletedCopyWithImpl<
          _$OfflineBookDownStateCompleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Book book) checking,
    required TResult Function(Book book) downloadRequired,
    required TResult Function(Book book, double progress) downloading,
    required TResult Function(Book book, double progress) paused,
    required TResult Function(Book book, Object? error, StackTrace? stackTrace)
        failed,
    required TResult Function(Book book) completed,
  }) {
    return completed(book);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Book book)? checking,
    TResult? Function(Book book)? downloadRequired,
    TResult? Function(Book book, double progress)? downloading,
    TResult? Function(Book book, double progress)? paused,
    TResult? Function(Book book, Object? error, StackTrace? stackTrace)? failed,
    TResult? Function(Book book)? completed,
  }) {
    return completed?.call(book);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Book book)? checking,
    TResult Function(Book book)? downloadRequired,
    TResult Function(Book book, double progress)? downloading,
    TResult Function(Book book, double progress)? paused,
    TResult Function(Book book, Object? error, StackTrace? stackTrace)? failed,
    TResult Function(Book book)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(book);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OfflineBookDownloadStateDownloadChecking value)
        checking,
    required TResult Function(OfflineBookDownloadStateDownloadRequired value)
        downloadRequired,
    required TResult Function(OfflineBookDownloadStateDownloading value)
        downloading,
    required TResult Function(OfflineBookDownloadStatePaused value) paused,
    required TResult Function(OfflineBookDownloadStateFailed value) failed,
    required TResult Function(OfflineBookDownStateCompleted value) completed,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OfflineBookDownloadStateDownloadChecking value)? checking,
    TResult? Function(OfflineBookDownloadStateDownloadRequired value)?
        downloadRequired,
    TResult? Function(OfflineBookDownloadStateDownloading value)? downloading,
    TResult? Function(OfflineBookDownloadStatePaused value)? paused,
    TResult? Function(OfflineBookDownloadStateFailed value)? failed,
    TResult? Function(OfflineBookDownStateCompleted value)? completed,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OfflineBookDownloadStateDownloadChecking value)? checking,
    TResult Function(OfflineBookDownloadStateDownloadRequired value)?
        downloadRequired,
    TResult Function(OfflineBookDownloadStateDownloading value)? downloading,
    TResult Function(OfflineBookDownloadStatePaused value)? paused,
    TResult Function(OfflineBookDownloadStateFailed value)? failed,
    TResult Function(OfflineBookDownStateCompleted value)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class OfflineBookDownStateCompleted extends OfflineBookDownloadState {
  const factory OfflineBookDownStateCompleted({required final Book book}) =
      _$OfflineBookDownStateCompleted;
  const OfflineBookDownStateCompleted._() : super._();

  @override
  Book get book;
  @override
  @JsonKey(ignore: true)
  _$$OfflineBookDownStateCompletedCopyWith<_$OfflineBookDownStateCompleted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookOfflineStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() available,
    required TResult Function(bool isSaving) updating,
    required TResult Function() unavailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? available,
    TResult? Function(bool isSaving)? updating,
    TResult? Function()? unavailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? available,
    TResult Function(bool isSaving)? updating,
    TResult Function()? unavailable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$BookOfflineStatusUnknown value) unknown,
    required TResult Function(_$BookOfflineStatusAvailable value) available,
    required TResult Function(_$BookOfflineStatusUpdating value) updating,
    required TResult Function(_$BookOfflineStatusUnavailable value) unavailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$BookOfflineStatusUnknown value)? unknown,
    TResult? Function(_$BookOfflineStatusAvailable value)? available,
    TResult? Function(_$BookOfflineStatusUpdating value)? updating,
    TResult? Function(_$BookOfflineStatusUnavailable value)? unavailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$BookOfflineStatusUnknown value)? unknown,
    TResult Function(_$BookOfflineStatusAvailable value)? available,
    TResult Function(_$BookOfflineStatusUpdating value)? updating,
    TResult Function(_$BookOfflineStatusUnavailable value)? unavailable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookOfflineStatusCopyWith<$Res> {
  factory $BookOfflineStatusCopyWith(
          BookOfflineStatus value, $Res Function(BookOfflineStatus) then) =
      _$BookOfflineStatusCopyWithImpl<$Res, BookOfflineStatus>;
}

/// @nodoc
class _$BookOfflineStatusCopyWithImpl<$Res, $Val extends BookOfflineStatus>
    implements $BookOfflineStatusCopyWith<$Res> {
  _$BookOfflineStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_$BookOfflineStatusUnknownCopyWith<$Res> {
  factory _$$_$BookOfflineStatusUnknownCopyWith(
          _$_$BookOfflineStatusUnknown value,
          $Res Function(_$_$BookOfflineStatusUnknown) then) =
      __$$_$BookOfflineStatusUnknownCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$BookOfflineStatusUnknownCopyWithImpl<$Res>
    extends _$BookOfflineStatusCopyWithImpl<$Res, _$_$BookOfflineStatusUnknown>
    implements _$$_$BookOfflineStatusUnknownCopyWith<$Res> {
  __$$_$BookOfflineStatusUnknownCopyWithImpl(
      _$_$BookOfflineStatusUnknown _value,
      $Res Function(_$_$BookOfflineStatusUnknown) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$BookOfflineStatusUnknown extends _$BookOfflineStatusUnknown {
  const _$_$BookOfflineStatusUnknown() : super._();

  @override
  String toString() {
    return 'BookOfflineStatus.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$BookOfflineStatusUnknown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() available,
    required TResult Function(bool isSaving) updating,
    required TResult Function() unavailable,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? available,
    TResult? Function(bool isSaving)? updating,
    TResult? Function()? unavailable,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? available,
    TResult Function(bool isSaving)? updating,
    TResult Function()? unavailable,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$BookOfflineStatusUnknown value) unknown,
    required TResult Function(_$BookOfflineStatusAvailable value) available,
    required TResult Function(_$BookOfflineStatusUpdating value) updating,
    required TResult Function(_$BookOfflineStatusUnavailable value) unavailable,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$BookOfflineStatusUnknown value)? unknown,
    TResult? Function(_$BookOfflineStatusAvailable value)? available,
    TResult? Function(_$BookOfflineStatusUpdating value)? updating,
    TResult? Function(_$BookOfflineStatusUnavailable value)? unavailable,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$BookOfflineStatusUnknown value)? unknown,
    TResult Function(_$BookOfflineStatusAvailable value)? available,
    TResult Function(_$BookOfflineStatusUpdating value)? updating,
    TResult Function(_$BookOfflineStatusUnavailable value)? unavailable,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _$BookOfflineStatusUnknown extends BookOfflineStatus {
  const factory _$BookOfflineStatusUnknown() = _$_$BookOfflineStatusUnknown;
  const _$BookOfflineStatusUnknown._() : super._();
}

/// @nodoc
abstract class _$$_$BookOfflineStatusAvailableCopyWith<$Res> {
  factory _$$_$BookOfflineStatusAvailableCopyWith(
          _$_$BookOfflineStatusAvailable value,
          $Res Function(_$_$BookOfflineStatusAvailable) then) =
      __$$_$BookOfflineStatusAvailableCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$BookOfflineStatusAvailableCopyWithImpl<$Res>
    extends _$BookOfflineStatusCopyWithImpl<$Res,
        _$_$BookOfflineStatusAvailable>
    implements _$$_$BookOfflineStatusAvailableCopyWith<$Res> {
  __$$_$BookOfflineStatusAvailableCopyWithImpl(
      _$_$BookOfflineStatusAvailable _value,
      $Res Function(_$_$BookOfflineStatusAvailable) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$BookOfflineStatusAvailable extends _$BookOfflineStatusAvailable {
  const _$_$BookOfflineStatusAvailable() : super._();

  @override
  String toString() {
    return 'BookOfflineStatus.available()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$BookOfflineStatusAvailable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() available,
    required TResult Function(bool isSaving) updating,
    required TResult Function() unavailable,
  }) {
    return available();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? available,
    TResult? Function(bool isSaving)? updating,
    TResult? Function()? unavailable,
  }) {
    return available?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? available,
    TResult Function(bool isSaving)? updating,
    TResult Function()? unavailable,
    required TResult orElse(),
  }) {
    if (available != null) {
      return available();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$BookOfflineStatusUnknown value) unknown,
    required TResult Function(_$BookOfflineStatusAvailable value) available,
    required TResult Function(_$BookOfflineStatusUpdating value) updating,
    required TResult Function(_$BookOfflineStatusUnavailable value) unavailable,
  }) {
    return available(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$BookOfflineStatusUnknown value)? unknown,
    TResult? Function(_$BookOfflineStatusAvailable value)? available,
    TResult? Function(_$BookOfflineStatusUpdating value)? updating,
    TResult? Function(_$BookOfflineStatusUnavailable value)? unavailable,
  }) {
    return available?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$BookOfflineStatusUnknown value)? unknown,
    TResult Function(_$BookOfflineStatusAvailable value)? available,
    TResult Function(_$BookOfflineStatusUpdating value)? updating,
    TResult Function(_$BookOfflineStatusUnavailable value)? unavailable,
    required TResult orElse(),
  }) {
    if (available != null) {
      return available(this);
    }
    return orElse();
  }
}

abstract class _$BookOfflineStatusAvailable extends BookOfflineStatus {
  const factory _$BookOfflineStatusAvailable() = _$_$BookOfflineStatusAvailable;
  const _$BookOfflineStatusAvailable._() : super._();
}

/// @nodoc
abstract class _$$_$BookOfflineStatusUpdatingCopyWith<$Res> {
  factory _$$_$BookOfflineStatusUpdatingCopyWith(
          _$_$BookOfflineStatusUpdating value,
          $Res Function(_$_$BookOfflineStatusUpdating) then) =
      __$$_$BookOfflineStatusUpdatingCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isSaving});
}

/// @nodoc
class __$$_$BookOfflineStatusUpdatingCopyWithImpl<$Res>
    extends _$BookOfflineStatusCopyWithImpl<$Res, _$_$BookOfflineStatusUpdating>
    implements _$$_$BookOfflineStatusUpdatingCopyWith<$Res> {
  __$$_$BookOfflineStatusUpdatingCopyWithImpl(
      _$_$BookOfflineStatusUpdating _value,
      $Res Function(_$_$BookOfflineStatusUpdating) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSaving = null,
  }) {
    return _then(_$_$BookOfflineStatusUpdating(
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_$BookOfflineStatusUpdating extends _$BookOfflineStatusUpdating {
  const _$_$BookOfflineStatusUpdating({required this.isSaving}) : super._();

  @override
  final bool isSaving;

  @override
  String toString() {
    return 'BookOfflineStatus.updating(isSaving: $isSaving)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$BookOfflineStatusUpdating &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSaving);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$BookOfflineStatusUpdatingCopyWith<_$_$BookOfflineStatusUpdating>
      get copyWith => __$$_$BookOfflineStatusUpdatingCopyWithImpl<
          _$_$BookOfflineStatusUpdating>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() available,
    required TResult Function(bool isSaving) updating,
    required TResult Function() unavailable,
  }) {
    return updating(isSaving);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? available,
    TResult? Function(bool isSaving)? updating,
    TResult? Function()? unavailable,
  }) {
    return updating?.call(isSaving);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? available,
    TResult Function(bool isSaving)? updating,
    TResult Function()? unavailable,
    required TResult orElse(),
  }) {
    if (updating != null) {
      return updating(isSaving);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$BookOfflineStatusUnknown value) unknown,
    required TResult Function(_$BookOfflineStatusAvailable value) available,
    required TResult Function(_$BookOfflineStatusUpdating value) updating,
    required TResult Function(_$BookOfflineStatusUnavailable value) unavailable,
  }) {
    return updating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$BookOfflineStatusUnknown value)? unknown,
    TResult? Function(_$BookOfflineStatusAvailable value)? available,
    TResult? Function(_$BookOfflineStatusUpdating value)? updating,
    TResult? Function(_$BookOfflineStatusUnavailable value)? unavailable,
  }) {
    return updating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$BookOfflineStatusUnknown value)? unknown,
    TResult Function(_$BookOfflineStatusAvailable value)? available,
    TResult Function(_$BookOfflineStatusUpdating value)? updating,
    TResult Function(_$BookOfflineStatusUnavailable value)? unavailable,
    required TResult orElse(),
  }) {
    if (updating != null) {
      return updating(this);
    }
    return orElse();
  }
}

abstract class _$BookOfflineStatusUpdating extends BookOfflineStatus {
  const factory _$BookOfflineStatusUpdating({required final bool isSaving}) =
      _$_$BookOfflineStatusUpdating;
  const _$BookOfflineStatusUpdating._() : super._();

  bool get isSaving;
  @JsonKey(ignore: true)
  _$$_$BookOfflineStatusUpdatingCopyWith<_$_$BookOfflineStatusUpdating>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$BookOfflineStatusUnavailableCopyWith<$Res> {
  factory _$$_$BookOfflineStatusUnavailableCopyWith(
          _$_$BookOfflineStatusUnavailable value,
          $Res Function(_$_$BookOfflineStatusUnavailable) then) =
      __$$_$BookOfflineStatusUnavailableCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$BookOfflineStatusUnavailableCopyWithImpl<$Res>
    extends _$BookOfflineStatusCopyWithImpl<$Res,
        _$_$BookOfflineStatusUnavailable>
    implements _$$_$BookOfflineStatusUnavailableCopyWith<$Res> {
  __$$_$BookOfflineStatusUnavailableCopyWithImpl(
      _$_$BookOfflineStatusUnavailable _value,
      $Res Function(_$_$BookOfflineStatusUnavailable) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$BookOfflineStatusUnavailable extends _$BookOfflineStatusUnavailable {
  const _$_$BookOfflineStatusUnavailable() : super._();

  @override
  String toString() {
    return 'BookOfflineStatus.unavailable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$BookOfflineStatusUnavailable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() available,
    required TResult Function(bool isSaving) updating,
    required TResult Function() unavailable,
  }) {
    return unavailable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unknown,
    TResult? Function()? available,
    TResult? Function(bool isSaving)? updating,
    TResult? Function()? unavailable,
  }) {
    return unavailable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? available,
    TResult Function(bool isSaving)? updating,
    TResult Function()? unavailable,
    required TResult orElse(),
  }) {
    if (unavailable != null) {
      return unavailable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$BookOfflineStatusUnknown value) unknown,
    required TResult Function(_$BookOfflineStatusAvailable value) available,
    required TResult Function(_$BookOfflineStatusUpdating value) updating,
    required TResult Function(_$BookOfflineStatusUnavailable value) unavailable,
  }) {
    return unavailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$BookOfflineStatusUnknown value)? unknown,
    TResult? Function(_$BookOfflineStatusAvailable value)? available,
    TResult? Function(_$BookOfflineStatusUpdating value)? updating,
    TResult? Function(_$BookOfflineStatusUnavailable value)? unavailable,
  }) {
    return unavailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$BookOfflineStatusUnknown value)? unknown,
    TResult Function(_$BookOfflineStatusAvailable value)? available,
    TResult Function(_$BookOfflineStatusUpdating value)? updating,
    TResult Function(_$BookOfflineStatusUnavailable value)? unavailable,
    required TResult orElse(),
  }) {
    if (unavailable != null) {
      return unavailable(this);
    }
    return orElse();
  }
}

abstract class _$BookOfflineStatusUnavailable extends BookOfflineStatus {
  const factory _$BookOfflineStatusUnavailable() =
      _$_$BookOfflineStatusUnavailable;
  const _$BookOfflineStatusUnavailable._() : super._();
}
