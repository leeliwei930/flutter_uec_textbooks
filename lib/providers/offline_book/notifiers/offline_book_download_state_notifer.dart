import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uec_textbooks_app/models/book.dart';
import 'package:uec_textbooks_app/providers/books_provider.dart';
import 'package:uec_textbooks_app/providers/offline_book/states/offline_book_download_state.dart';
import 'package:uec_textbooks_app/providers/saved_library_provider.dart';

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
    if (!mounted) {
      return;
    }
    final hasOfflinePDFPath = state.book.offlinePDFPath != null;
    final offlineBookFileStorageService = ref.read(offlineBookFileStorageServiceProvider);
    if (hasOfflinePDFPath) {
      final isAvailable = await offlineBookFileStorageService.checkBookAvailability(state.book);
      if (isAvailable) {
        state = OfflineBookDownloadState.completed(book: state.book);
      } else {
        state = OfflineBookDownloadState.downloadRequired(book: state.book);
      }
    } else {
      // look for download queue
      final downloadTasks = await FlutterDownloader.loadTasksWithRawQuery(
          query: 'SELECT * FROM task WHERE task_id = ${state.book.pdfDownloadTaskId}');

      if (downloadTasks != null && downloadTasks.isNotEmpty) {
        final lastDownloadTask = downloadTasks.first;
        if (lastDownloadTask.status == DownloadTaskStatus.paused) {
          state = OfflineBookDownloadState.paused(book: state.book, progress: lastDownloadTask.progress / 100);
          return;
        } else if (lastDownloadTask.status == DownloadTaskStatus.running) {
          state = OfflineBookDownloadState.downloading(book: state.book, progress: lastDownloadTask.progress / 100);
          return;
        } else if (lastDownloadTask.status == DownloadTaskStatus.failed) {
          state = OfflineBookDownloadState.failed(book: state.book);
          return;
        } else if (lastDownloadTask.status == DownloadTaskStatus.enqueued) {
          state = OfflineBookDownloadState.downloadStarted(book: state.book);
          return;
        } else {
          state = OfflineBookDownloadState.downloadRequired(book: state.book);
        }
      } else {
        state = OfflineBookDownloadState.downloadRequired(book: state.book);
      }
    }
  }

  void updateDownloadProgress(double progress) {
    if (progress >= 1) {
      state = OfflineBookDownloadState.completed(book: state.book);
      return;
    }
    state = OfflineBookDownloadState.downloading(book: state.book, progress: progress);
  }

  void startDownload() async {
    if (state is OfflineBookDownloadStateDownloading || !mounted) {
      return;
    }

    try {
      final offlineBookFileStorageService = ref.read(offlineBookFileStorageServiceProvider);
      final saveDir = await offlineBookFileStorageService.getBookSavedDirectory(state.book);
      final String? taskId = await FlutterDownloader.enqueue(
        url: state.book.downloadUrl,
        savedDir: saveDir,
        fileName: state.book.name,
        requiresStorageNotLow: true,
      );
      final box = ref.read(savedLibraryRepositoryProvider);
      await box.updateLibraryBook(
        key: state.book.path,
        book: state.book.copyWith(
          pdfDownloadTaskId: taskId,
          offlinePDFPath: '$saveDir/${state.book.name}',
        ),
      );
      state = OfflineBookDownloadState.downloadStarted(book: state.book);
    } catch (error, stackTrace) {
      state = OfflineBookDownloadState.failed(
        book: state.book,
        error: error,
        stackTrace: stackTrace,
      );
    }
  }
}
