// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_task_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DownloadTaskRecord {
  String get id => throw _privateConstructorUsedError;
  DownloadTaskStatus get status => throw _privateConstructorUsedError;
  double get progress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadTaskRecordCopyWith<DownloadTaskRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadTaskRecordCopyWith<$Res> {
  factory $DownloadTaskRecordCopyWith(
          DownloadTaskRecord value, $Res Function(DownloadTaskRecord) then) =
      _$DownloadTaskRecordCopyWithImpl<$Res, DownloadTaskRecord>;
  @useResult
  $Res call({String id, DownloadTaskStatus status, double progress});
}

/// @nodoc
class _$DownloadTaskRecordCopyWithImpl<$Res, $Val extends DownloadTaskRecord>
    implements $DownloadTaskRecordCopyWith<$Res> {
  _$DownloadTaskRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? progress = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DownloadTaskStatus,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DownloadTaskCopyWith<$Res>
    implements $DownloadTaskRecordCopyWith<$Res> {
  factory _$$_DownloadTaskCopyWith(
          _$_DownloadTask value, $Res Function(_$_DownloadTask) then) =
      __$$_DownloadTaskCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, DownloadTaskStatus status, double progress});
}

/// @nodoc
class __$$_DownloadTaskCopyWithImpl<$Res>
    extends _$DownloadTaskRecordCopyWithImpl<$Res, _$_DownloadTask>
    implements _$$_DownloadTaskCopyWith<$Res> {
  __$$_DownloadTaskCopyWithImpl(
      _$_DownloadTask _value, $Res Function(_$_DownloadTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? progress = null,
  }) {
    return _then(_$_DownloadTask(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DownloadTaskStatus,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_DownloadTask implements _DownloadTask {
  const _$_DownloadTask(
      {required this.id, required this.status, required this.progress});

  @override
  final String id;
  @override
  final DownloadTaskStatus status;
  @override
  final double progress;

  @override
  String toString() {
    return 'DownloadTaskRecord(id: $id, status: $status, progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownloadTask &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, status, progress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DownloadTaskCopyWith<_$_DownloadTask> get copyWith =>
      __$$_DownloadTaskCopyWithImpl<_$_DownloadTask>(this, _$identity);
}

abstract class _DownloadTask implements DownloadTaskRecord {
  const factory _DownloadTask(
      {required final String id,
      required final DownloadTaskStatus status,
      required final double progress}) = _$_DownloadTask;

  @override
  String get id;
  @override
  DownloadTaskStatus get status;
  @override
  double get progress;
  @override
  @JsonKey(ignore: true)
  _$$_DownloadTaskCopyWith<_$_DownloadTask> get copyWith =>
      throw _privateConstructorUsedError;
}
