import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'download_task_record.freezed.dart';

@freezed
class DownloadTaskRecord with _$DownloadTaskRecord {
  const factory DownloadTaskRecord({
    required String id,
    required DownloadTaskStatus status,
    required double progress,
  }) = _DownloadTask;
}
