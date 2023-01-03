import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uec_textbooks/models/book.dart';
import 'package:uec_textbooks/providers/books_provider.dart';
import 'package:uec_textbooks/providers/saved_library_provider.dart';

part 'offline_books_provider.freezed.dart';

final bookInSavedLibraryStatusProvider =
    StateNotifierProvider.family.autoDispose<BookInSavedLibraryStatusNotifier, BookOfflineStatus, Book>(
  (ref, book) {
    return BookInSavedLibraryStatusNotifier(
      ref: ref,
      book: book,
      initialState: const BookOfflineStatus.unknown(),
    );
  },
);

final offlineBookDownloadStateNotifierProvider =
    StateNotifierProvider.family.autoDispose<OfflineBookDownloadStateNotifier, OfflineBookDownloadState, Book>(
  (ref, book) {
    final stateNotifier = OfflineBookDownloadStateNotifier(ref: ref, book: book);

    return stateNotifier;
  },
);

/// The state notifier that handles the download state for each book in the database.
class OfflineBookDownloadStateNotifier extends StateNotifier<OfflineBookDownloadState> {
  OfflineBookDownloadStateNotifier({
    required this.ref,
    required Book book,
  }) : super(OfflineBookDownloadState.checking(book: book)) {
    checkPreviousDownloadState();
  }

  Ref ref;

  Future<void> checkPreviousDownloadState() async {
    final hasOfflinePDFPath = state.book.offlinePDFPath != null;
    final offlineBookFileStorageService = ref.read(offlineBookFileStorageServiceProvider);
    if (hasOfflinePDFPath) {
      final isAvailable = await offlineBookFileStorageService.checkBookAvailability(state.book);
      if (isAvailable) {
        state = OfflineBookDownloadState.completed(book: state.book);
      }
    } else {
      state = OfflineBookDownloadState.downloadRequired(book: state.book);
    }
  }

  void startDownload(Book book) async {
    if (state is OfflineBookDownloadStateDownloading && !mounted) {
      return;
    }
    final offlineBookFileStorageService = ref.read(offlineBookFileStorageServiceProvider);

    final saveDir = await offlineBookFileStorageService.getBookSavedDirectory(book);
    try {
      final String? taskId = await FlutterDownloader.enqueue(
        url: book.downloadUrl,
        savedDir: saveDir,
        fileName: book.name,
        requiresStorageNotLow: true,
      );

      final box = ref.read(savedLibraryRepositoryProvider);
      await box.updateLibraryBook(
        key: book.path,
        book: book.copyWith(pdfDownloadTaskId: taskId),
      );
    } catch (error, stackTrace) {
      print('download failed');
      state = OfflineBookDownloadState.failed(
        book: book,
        error: error,
        stackTrace: stackTrace,
      );
    }
  }
}

@freezed
class OfflineBookDownloadState with _$OfflineBookDownloadState {
  const OfflineBookDownloadState._();
  const factory OfflineBookDownloadState.checking({
    required Book book,
  }) = OfflineBookDownloadStateDownloadChecking;
  const factory OfflineBookDownloadState.downloadRequired({
    required Book book,
  }) = OfflineBookDownloadStateDownloadRequired;

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

/// The state notifier that handles the saved in library status.
class BookInSavedLibraryStatusNotifier extends StateNotifier<BookOfflineStatus> {
  BookInSavedLibraryStatusNotifier({
    required this.ref,
    required this.book,
    required BookOfflineStatus initialState,
  }) : super(initialState) {
    checkAvailability();
  }

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

  Future<void> add() async {
    if (state is _$BookOfflineStatusAvailable || state is _$BookOfflineStatusUpdating) {
      return;
    }

    final savedLibraryRepo = ref.read(savedLibraryRepositoryProvider);
    final rollbackState = state;
    state = const BookOfflineStatus.updating(isSaving: true);
    try {
      await savedLibraryRepo.addToLibrary(book);
      state = const BookOfflineStatus.prepareDownload();
      state = const BookOfflineStatus.available();
    } catch (error) {
      state = rollbackState;
    }
  }

  Future<void> remove() async {
    if (state is _$BookOfflineStatusUnavailable || state is _$BookOfflineStatusUpdating) {
      return;
    }

    final savedLibraryRepo = ref.read(savedLibraryRepositoryProvider);
    final rollbackState = state;
    state = const BookOfflineStatus.updating(isSaving: false);
    try {
      await savedLibraryRepo.removeFromLibrary(book);
      state = const BookOfflineStatus.unavailable();
    } catch (error) {
      state = rollbackState;
    }
  }
}

@freezed
class BookOfflineStatus with _$BookOfflineStatus {
  const BookOfflineStatus._();
  const factory BookOfflineStatus.unknown() = _$BookOfflineStatusUnknown;
  const factory BookOfflineStatus.prepareDownload() = _$BookOfflineStatusPrepareDownload;
  const factory BookOfflineStatus.available() = _$BookOfflineStatusAvailable;
  const factory BookOfflineStatus.updating({required bool isSaving}) = _$BookOfflineStatusUpdating;
  const factory BookOfflineStatus.unavailable() = _$BookOfflineStatusUnavailable;
}
