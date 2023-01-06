import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_offline_status_state.freezed.dart';

@freezed
class BookOfflineStatus with _$BookOfflineStatus {
  const BookOfflineStatus._();
  const factory BookOfflineStatus.unknown() = BookOfflineStatusUnknown;
  const factory BookOfflineStatus.available() = BookOfflineStatusAvailable;
  const factory BookOfflineStatus.unableToDownload() = BookOfflineStatusUnableToDownload;
  const factory BookOfflineStatus.updating({required bool isSaving}) = BookOfflineStatusUpdating;
  const factory BookOfflineStatus.unavailable() = BookOfflineStatusUnavailable;
}
