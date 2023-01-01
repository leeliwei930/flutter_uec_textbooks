import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uec_textbooks/models/book.dart';
import 'package:uec_textbooks/providers/saved_library_provider.dart';

part 'offline_books_provider.freezed.dart';

final bookOfflineStatusNotifierProvider =
    StateNotifierProvider.family<BookOfflineStatusNotifier, BookOfflineStatus, Book>(
  (ref, book) {
    return BookOfflineStatusNotifier(
      ref: ref,
      book: book,
      initialState: const BookOfflineStatus.unknown(),
    );
  },
);

final offlineBookDownloadStateNotifierProvider =
    StateNotifierProvider.family<OfflineBookDownloadStateNotifier, OfflineBookDownloadState, Book>(
  (ref, book) {
    return OfflineBookDownloadStateNotifier(
      initialState: OfflineBookDownloadState.downloadRequired(book: book),
    );
  },
);

class OfflineBookDownloadStateNotifier extends StateNotifier<OfflineBookDownloadState> {
  OfflineBookDownloadStateNotifier({
    required OfflineBookDownloadState initialState,
  }) : super(initialState);

  void startDownload(Book book) {
    state = OfflineBookDownloadState.initiate(book: book);
  }
}

@freezed
class OfflineBookDownloadState with _$OfflineBookDownloadState {
  const OfflineBookDownloadState._();
  const factory OfflineBookDownloadState.downloadRequired({
    required Book book,
  }) = OfflineBookDownloadStateDownloadRequired;

  const factory OfflineBookDownloadState.initiate({
    required Book book,
  }) = OfflineBookDownloadStateInititate;

  const factory OfflineBookDownloadState.downloading({
    required Book book,
    required double progress,
  }) = OfflineBookDownloadStateDownloading;

  const factory OfflineBookDownloadState.failed({
    Object? error,
    StackTrace? stackTrace,
  }) = OfflineBookDownloadStateFailed;

  const factory OfflineBookDownloadState.completed({
    required Book book,
  }) = OfflineBookDownStateCompleted;
}

class BookOfflineStatusNotifier extends StateNotifier<BookOfflineStatus> {
  BookOfflineStatusNotifier({
    required this.ref,
    required this.book,
    required BookOfflineStatus initialState,
  }) : super(initialState);

  final Ref ref;
  final Book book;

  void checkAvailability() async {
    final savedBookRepo = ref.read(savedLibraryRepositoryProvider);

    try {
      final isSaved = await savedBookRepo.isSavedInLibrary(book);
      if (isSaved) {
        state = const BookOfflineStatus.available();
      } else {
        state = const BookOfflineStatus.unavailable();
      }
    } catch (error, exception) {
      state = const BookOfflineStatus.unknown();
    }
  }

  Future<void> save() async {
    if (state is _$BookOfflineStatusAvailable || state is _$BookOfflineStatusUpdating) {
      return;
    }

    final savedLibraryRepo = ref.read(savedLibraryRepositoryProvider);
    final rollbackState = state;
    state = const BookOfflineStatus.updating(isSaving: true);
    try {
      await savedLibraryRepo.addToLibrary(book);
      state = const BookOfflineStatus.available();
    } catch (error) {
      state = rollbackState;
    }
  }

  Future<void> unsave() async {
    if (state is _$BookOfflineStatusUnavailable || state is _$BookOfflineStatusUpdating) {
      return;
    }

    final savedLibraryRepo = ref.read(savedLibraryRepositoryProvider);
    final rollbackState = state;
    state = const BookOfflineStatus.updating(isSaving: false);
    try {
      await savedLibraryRepo.removeFromLibrary(book);
      state = const BookOfflineStatus.available();
    } catch (error) {
      state = rollbackState;
    }
  }
}

@freezed
class BookOfflineStatus with _$BookOfflineStatus {
  const BookOfflineStatus._();
  const factory BookOfflineStatus.unknown() = _$BookOfflineStatusUnknown;
  const factory BookOfflineStatus.available() = _$BookOfflineStatusAvailable;
  const factory BookOfflineStatus.updating({required bool isSaving}) = _$BookOfflineStatusUpdating;
  const factory BookOfflineStatus.unavailable() = _$BookOfflineStatusUnavailable;
}
