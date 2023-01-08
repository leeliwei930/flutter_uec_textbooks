import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uec_textbooks_app/models/book_group.dart';
import 'package:uec_textbooks_app/providers/offline_book/states/offline_books_state.dart';
import 'package:uec_textbooks_app/providers/saved_library_provider.dart';

class OfflineBooksStateNotifier extends StateNotifier<OfflineBooksState> {
  OfflineBooksStateNotifier({
    required this.ref,
    required OfflineBooksState initialState,
  }) : super(initialState) {
    fetchReadingList();
  }

  Ref ref;

  void fetchReadingList() async {
    if (state is OfflineBooksLoading) {
      return;
    }

    try {
      state = OfflineBooksState.loading();
      final bookCollection = await ref.read(savedLibraryBoxProvider.future);
      if (bookCollection.isEmpty) {
        state = OfflineBooksState.empty();
      } else {
        final bookGroups = BookGroup.fromBoxCollection(bookCollection);
        state = OfflineBooksState.loaded(bookGroups: bookGroups);
      }
    } catch (error, stackTrace) {
      state = OfflineBooksState.loadError(
        error: error,
        stackTrace: stackTrace,
      );
    }
  }
}
