import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uec_textbooks_app/models/book.dart';
import 'package:uec_textbooks_app/providers/offline_book/notifiers/book_offline_status_state_notifier.dart';
import 'package:uec_textbooks_app/providers/offline_book/notifiers/offline_book_download_state_notifer.dart';
import 'package:uec_textbooks_app/providers/offline_book/notifiers/offline_books_state_notifier.dart';
import 'package:uec_textbooks_app/providers/offline_book/states/book_offline_status_state.dart';
import 'package:uec_textbooks_app/providers/offline_book/states/offline_book_download_state.dart';

import 'offline_book/states/offline_books_state.dart';

final bookInSavedLibraryStatusProvider =
    StateNotifierProvider.family.autoDispose<BookOfflineStatusStateNotifier, BookOfflineStatus, Book>(
  (ref, book) {
    return BookOfflineStatusStateNotifier(
      ref: ref,
      book: book,
      initialState: const BookOfflineStatus.unknown(),
    );
  },
);

final offlineBooksNotifierProvider = StateNotifierProvider.autoDispose<OfflineBooksStateNotifier, OfflineBooksState>(
  (ref) {
    return OfflineBooksStateNotifier(
      ref: ref,
      initialState: OfflineBooksState.initial(),
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
