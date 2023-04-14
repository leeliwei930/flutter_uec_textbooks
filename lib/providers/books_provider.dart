import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_file/internet_file.dart';
import 'package:pdfx/pdfx.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uec_textbooks_app/constants/books_meta.dart';
import 'package:uec_textbooks_app/models/book.dart';
import 'package:uec_textbooks_app/models/book_pages.dart';
import 'package:uec_textbooks_app/models/year_group.dart';
import 'package:uec_textbooks_app/providers/repository_provider.dart';
import 'package:uec_textbooks_app/service/offline_file_service.dart';

part 'books_provider.g.dart';

@Riverpod(keepAlive: true)
Future<List<Book>> books(BooksRef ref) async {
  final repo = ref.read(ebooksRepositoryProvider);
  final selectedYearGroup = ref.watch(yearGroupStateProvider);
  final cancelToken = CancelToken();
  ref.onDispose(() {
    cancelToken.cancel();
  });

  final books = await repo.getEbookByYearGroup(
    cancelToken: cancelToken,
    yearGroup: selectedYearGroup,
  );
  // filtered out only pdf files.
  return books.where((file) => file.name.endsWith('.pdf')).toList();
}

@Riverpod(keepAlive: true)
YearGroupEbookPages _bookPages(_BookPagesRef ref) {
  final pageCountDatasets = <YearGroup, Map<String, int>>{};

  BooksMeta.getPages().forEach(
    (key, value) {
      final yearGroup = YearGroup.values.byName(key);
      pageCountDatasets[yearGroup] = value;
    },
  );
  final data = YearGroupEbookPages(data: pageCountDatasets);
  return data;
}

@Riverpod(keepAlive: true)
Future<int> bookPages(
  BookPagesRef ref, {
  required Book book,
}) async {
  final yearGroupEbookPages = ref.watch(_bookPagesProvider);

  final pageCount = yearGroupEbookPages.getPageCountByEBook(book);

  if (pageCount != null) {
    return pageCount;
  }

  final doc = await PdfDocument.openData(InternetFile.get(book.downloadUrl));
  return doc.pagesCount;
}

final yearGroupStateProvider = StateProvider(
  (_) => YearGroup.jm1,
);

// the readonly provider, which consume the selectedBookStateProvider.
@riverpod
Book? viewBook(ViewBookRef ref) {
  ref.onDispose(() {
    // when no longer watch or listen, reset the selectedBookStateProvider state
    ref.invalidate(selectedBookStateProvider);
  });
  return ref.watch(selectedBookStateProvider);
}

@riverpod
Future<PdfDocument> viewBookPDFViewer(ViewBookPDFViewerRef ref, {bool isViewingOffline = false}) async {
  final selectedBook = ref.watch(viewBookProvider);
  if (selectedBook == null) {
    throw Exception('invalid state');
  }

  if (isViewingOffline) {
    return PdfDocument.openFile(selectedBook.offlinePDFPath!);
  } else {
    return PdfDocument.openData(InternetFile.get(selectedBook.downloadUrl));
  }
}

final selectedBookStateProvider = StateProvider.autoDispose<Book?>((ref) {
  return null;
});

@riverpod
OfflineBookFileStorageService offlineBookFileStorageService(OfflineBookFileStorageServiceRef ref) =>
    OfflineBookFileStorageService(ref);
