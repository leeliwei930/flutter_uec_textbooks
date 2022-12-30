import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uec_textbooks/constants/books_pages.dart';
import 'package:uec_textbooks/models/book.dart';
import 'package:uec_textbooks/models/book_pages.dart';
import 'package:uec_textbooks/models/year_group.dart';
import 'package:uec_textbooks/providers/repository_provider.dart';

part 'ebooks_provider.g.dart';

@Riverpod(keepAlive: true)
Future<List<Book>> ebooks(EbooksRef ref) async {
  final repo = ref.read(ebooksRepositoryProvider);
  final selectedYearGroup = ref.watch(yearGroupStateProvider);
  return Future.delayed(const Duration(seconds: 3), () async {
    final books = await repo.getEbookByYearGroup(selectedYearGroup);
    // filtered out only pdf files.
    return books.where((file) => file.name.endsWith('.pdf')).toList();
  });
}

@Riverpod(keepAlive: true)
YearGroupEbookPages _bookPages(_BookPagesRef ref) {
  final pageCountDatasets = <YearGroup, Map<String, int>>{};

  bookPages.forEach(
    (key, value) {
      final yearGroup = YearGroup.values.byName(key);
      pageCountDatasets[yearGroup] = value;
    },
  );
  final data = YearGroupEbookPages(data: pageCountDatasets);
  return data;
}

@Riverpod(keepAlive: true)
Future<int> ebookPages(
  EbookPagesRef ref, {
  required Book book,
}) async {
  final yearGroupEbookPages = ref.watch(_bookPagesProvider);

  final pageCount = yearGroupEbookPages.getPageCountByEBook(book);

  if (pageCount != null) {
    return pageCount;
  }

  final doc = await PDFDocument.fromURL(book.downloadUrl);
  return doc.count;
}

final yearGroupStateProvider = StateProvider(
  (_) => YearGroup.jm1,
);

// the readonly provider, which consume the selectedBookStateProvider.
final viewBookProvider = Provider.autoDispose<Book?>((ref) {
  ref.onDispose(() {
    // when no longer watch or listen, reset the selectedBookStateProvider state
    ref.invalidate(selectedBookStateProvider);
  });
  return ref.watch(selectedBookStateProvider);
});

final selectedBookStateProvider = StateProvider.autoDispose<Book?>((ref) {
  return null;
});
