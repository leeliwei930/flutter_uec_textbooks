import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uec_textbooks/models/book.dart';

part 'offline_books_provider.freezed.dart';
part 'offline_books_provider.g.dart';

@riverpod
OfflineBookStateNotifier offlineBookStateNotifier(
  OfflineBookStateNotifierRef ref, {
  required Book book,
}) {
  return OfflineBookStateNotifier(
    initialState: OfflineBookState.downloadRequired(
      book: book,
    ),
  );
}

class OfflineBookStateNotifier extends StateNotifier<OfflineBookState> {
  OfflineBookStateNotifier({
    required OfflineBookState initialState,
  }) : super(initialState);
}

@freezed
class OfflineBookState with _$OfflineBookState {
  const OfflineBookState._();
  const factory OfflineBookState.downloadRequired({
    required Book book,
  }) = OfflineBookStateDownloadRequired;

  const factory OfflineBookState.initiateDownload({
    required Book book,
  }) = OfflineBookStateInititateDownload;

  const factory OfflineBookState.downloading({
    required Book book,
    required double progress,
  }) = OfflineBookStateDownloading;

  const factory OfflineBookState.downloadFailed({
    Object? error,
    StackTrace? stackTrace,
  }) = OfflineBookStateDownloadFailed;

  const factory OfflineBookState.downloaded({
    required Book book,
  }) = OfflineBookStateDownloaded;
}
