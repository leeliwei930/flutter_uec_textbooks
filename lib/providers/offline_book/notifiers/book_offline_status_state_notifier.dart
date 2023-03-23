import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uec_textbooks_app/models/book.dart';
import 'package:uec_textbooks_app/providers/books_provider.dart';
import 'package:uec_textbooks_app/providers/offline_book/states/book_offline_status_state.dart';
import 'package:uec_textbooks_app/providers/saved_library_provider.dart';

/// The state notifier that handles the saved in library status.
class BookOfflineStatusStateNotifier extends StateNotifier<BookOfflineStatus> {
  BookOfflineStatusStateNotifier({
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
    } catch (error, _) {
      state = const BookOfflineStatus.unknown();
    }
  }

  Future<void> add() async {
    if (state is BookOfflineStatusAvailable || state is BookOfflineStatusUpdating) {
      return;
    }

    final savedLibraryRepo = ref.read(savedLibraryRepositoryProvider);
    final rollbackState = state;
    state = const BookOfflineStatus.updating(isSaving: true);
    try {
      await savedLibraryRepo.addToLibrary(book);

      final offlineBookFileStorageService = ref.read(offlineBookFileStorageServiceProvider);

      final saveDir = await offlineBookFileStorageService.getBookSavedDirectory(book);
      final String? taskId = await FlutterDownloader.enqueue(
        url: book.downloadUrl,
        savedDir: saveDir,
        fileName: book.name,
        requiresStorageNotLow: true,
      );

      final box = ref.read(savedLibraryRepositoryProvider);
      await box.updateLibraryBook(
        key: book.path,
        book: book.copyWith(
          pdfDownloadTaskId: taskId,
          offlinePDFPath: '$saveDir/${book.name}',
        ),
      );

      state = const BookOfflineStatus.available();
    } catch (error) {
      state = rollbackState;
    }
  }

  Future<void> remove() async {
    if (state is BookOfflineStatusUnavailable || state is BookOfflineStatusUpdating) {
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
