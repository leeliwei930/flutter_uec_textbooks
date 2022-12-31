part of '../library_view.dart';

abstract class _LibraryViewLoadedBase extends ConsumerWidget {
  const _LibraryViewLoadedBase({
    required this.yearGroup,
    required this.books,
  });

  final List<Book> books;
  final YearGroup yearGroup;

  int get crossAxisCount;
  double get childAspectRatio;
  double get imagePlaceholderAspectRatio;
  double get crossAxisSpacing;
  double get mainAxisSpacing;

  void _pushToBookViewPage(BuildContext context, {Book? book}) {
    if (book != null) {
      context.pushNamed('view-book');
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<Book?>(
      selectedBookStateProvider,
      (_, book) => _pushToBookViewPage(
        context,
        book: book,
      ),
    );
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: crossAxisSpacing,
        mainAxisSpacing: mainAxisSpacing,
      ),
      delegate: SliverChildBuilderDelegate(
        childCount: books.length,
        (context, index) {
          final book = books.elementAt(index);
          final bookPages = ref.watch(
            bookPagesProvider(book: book),
          );
          final isBookOfflineSaved = ref.watch(isBookOfflineSavedProvider(book: book));

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: kSpacingMedium, horizontal: kSpacingSmall),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    ref.read(selectedBookStateProvider.notifier).state = book;
                  },
                  child: Image.network(
                    TextBookCoverImage.url(
                      yearGroup: ref.read(yearGroupStateProvider),
                      filename: book.imageName,
                    ),
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Shimmer.fromColors(
                        baseColor: Colors.grey[300]!,
                        highlightColor: Colors.grey[100]!,
                        child: AspectRatio(
                          aspectRatio: imagePlaceholderAspectRatio,
                          child: Container(
                            color: Colors.white,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: kSpacingXSmall,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(book.title),
                          Text(book.fileSizeForHuman),
                          bookPages.maybeWhen(
                            data: (pages) => Text("$pages ${plural("page", pages)}"),
                            orElse: () => const SizedBox.shrink(),
                          )
                        ],
                      ),
                    ),
                    isBookOfflineSaved.maybeWhen(
                      orElse: () => const SizedBox.shrink(),
                      error: (error, stackTrace) {
                        print(error);
                        return const SizedBox.shrink();
                      },
                      data: (isSaved) {
                        return IconButton(
                          onPressed: () async {
                            final savedLibraryRepo = ref.read(savedLibraryRepositoryProvider);
                            if (isSaved) {
                              await savedLibraryRepo.removeFromLibrary(book);
                            } else {
                              await savedLibraryRepo.addToLibrary(book);
                            }
                            ref.invalidate(isBookOfflineSavedProvider(book: book));
                          },
                          icon: isSaved ? const Icon(Icons.bookmark) : const Icon(Icons.bookmark_border),
                        );
                      },
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
