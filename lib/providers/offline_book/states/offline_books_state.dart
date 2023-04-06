import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uec_textbooks_app/models/book_group.dart';

part 'offline_books_state.freezed.dart';

@freezed
class OfflineBooksState with _$OfflineBooksState {
  const OfflineBooksState._();

  factory OfflineBooksState.initial() = OfflineBooksInitial;
  factory OfflineBooksState.loading() = OfflineBooksLoading;
  factory OfflineBooksState.loaded({required List<BookGroup> bookGroups}) = OfflineBooksLoaded;
  factory OfflineBooksState.empty() = OfflineBooksEmpty;
  factory OfflineBooksState.loadError({Object? error, StackTrace? stackTrace}) = OfflineBooksLoadError;
  factory OfflineBooksState.removed({required List<BookGroup> bookGroups}) = OfflineBooksRemoved;
}
