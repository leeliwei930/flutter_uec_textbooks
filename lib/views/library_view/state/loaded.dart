part of '../library_view.dart';

abstract class _LibraryViewLoadedBase extends ConsumerWidget {
  const _LibraryViewLoadedBase({
    required this.yearGroup,
    required this.books,
  });

  final List<Ebook> books;
  final YearGroup yearGroup;

  int get crossAxisCount;
  double get childAspectRatio;
  double get imagePlaceholderAspectRatio;
  double get crossAxisSpacing;
  double get mainAxisSpacing;

  String getBookTitle({required YearGroup yearGroup, required String bookName}) {
    return '${yearGroup.name}.$bookName'.tr();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            ebookPagesProvider(downloadUrl: book.downloadUrl),
          );

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: kSpacingMedium, horizontal: kSpacingSmall),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
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
                const SizedBox(
                  height: kSpacingXSmall,
                ),
                Text(getBookTitle(
                  bookName: book.name,
                  yearGroup: yearGroup,
                )),
                Text(book.fileSizeForHuman),
                bookPages.maybeWhen(
                  data: (pages) => Text("$pages ${plural("page", pages)}"),
                  orElse: () => const SizedBox.shrink(),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
