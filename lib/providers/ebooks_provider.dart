import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uec_textbooks/models/ebook.dart';
import 'package:uec_textbooks/models/year_group.dart';
import 'package:uec_textbooks/providers/repository_provider.dart';

part 'ebooks_provider.g.dart';

@Riverpod(keepAlive: true)
Future<List<Ebook>> ebooks(EbooksRef ref) {
  final repo = ref.read(ebooksRepositoryProvider);
  final selectedYearGroup = ref.watch(selectedYearGroupProvider);
  return repo.getEbookByYearGroup(selectedYearGroup);
}

@Riverpod(keepAlive: true)
YearGroup selectedYearGroup(SelectedYearGroupRef ref) {
  return YearGroup.jm1;
}
