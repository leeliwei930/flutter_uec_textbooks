import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uec_textbooks/models/ebook.dart';
import 'package:uec_textbooks/models/year_group.dart';
import 'package:uec_textbooks/providers/repository_provider.dart';

part 'ebooks_provider.g.dart';

@Riverpod(keepAlive: true)
Future<List<Ebook>> ebooks(EbooksRef ref) async {
  final repo = ref.read(ebooksRepositoryProvider);
  final selectedYearGroup = ref.watch(selectedYearGroupProvider);
  final books = await repo.getEbookByYearGroup(selectedYearGroup);
  // filtered out only pdf files.
  return books.where((file) => file.name.endsWith('.pdf')).toList();
}

@Riverpod(keepAlive: true)
YearGroup selectedYearGroup(SelectedYearGroupRef ref) {
  return YearGroup.jm1;
}
