import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uec_textbooks/models/ebook.dart';
import 'package:uec_textbooks/models/year_group.dart';
import 'package:uec_textbooks/providers/repository_provider.dart';

part 'ebooks_provider.g.dart';

@Riverpod(keepAlive: true)
Future<List<Ebook>> ebooks(EbooksRef ref) async {
  final repo = ref.read(ebooksRepositoryProvider);
  final selectedYearGroup = ref.watch(yearGroupStateProvider);
  final books = await repo.getEbookByYearGroup(selectedYearGroup);
  // filtered out only pdf files.
  return books.where((file) => file.name.endsWith('.pdf')).toList();
}

@Riverpod(keepAlive: true)
Future<int> ebookPages(EbookPagesRef ref, {required String downloadUrl}) async {
  final doc = await PDFDocument.fromURL(downloadUrl);
  return doc.count;
}

final yearGroupStateProvider = StateProvider(
  (_) => YearGroup.jm1,
);
