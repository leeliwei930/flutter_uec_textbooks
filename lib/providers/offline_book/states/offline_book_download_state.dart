import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uec_textbooks/models/book.dart';

part 'offline_book_download_state.freezed.dart';

@freezed
class OfflineBookDownloadState with _$OfflineBookDownloadState {
  const OfflineBookDownloadState._();
  const factory OfflineBookDownloadState.checking({
    required Book book,
  }) = OfflineBookDownloadStateDownloadChecking;
  const factory OfflineBookDownloadState.downloadRequired({
    required Book book,
  }) = OfflineBookDownloadStateDownloadRequired;
  const factory OfflineBookDownloadState.downloadStarted({
    required Book book,
  }) = OfflineBookDownloadStateDownloadStarted;

  const factory OfflineBookDownloadState.downloading({
    required Book book,
    required double progress,
  }) = OfflineBookDownloadStateDownloading;

  const factory OfflineBookDownloadState.paused({
    required Book book,
    required double progress,
  }) = OfflineBookDownloadStatePaused;

  const factory OfflineBookDownloadState.failed({
    required Book book,
    Object? error,
    StackTrace? stackTrace,
  }) = OfflineBookDownloadStateFailed;

  const factory OfflineBookDownloadState.completed({
    required Book book,
  }) = OfflineBookDownStateCompleted;
}
