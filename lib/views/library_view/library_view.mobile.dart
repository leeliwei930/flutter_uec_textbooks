part of 'library_view.dart';

class _LibraryViewMobile extends LibraryView {
  const _LibraryViewMobile({super.key});

  @override
  LibraryViewState createState() => _LibraryViewMobileState();
}

class _LibraryViewMobileState extends LibraryViewState {
  @override
  Widget build(BuildContext context) {
    final books = ref.watch(ebooksProvider);
    final selectedYearGroup = ref.watch(yearGroupStateProvider);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: RefreshIndicator(
        onRefresh: refreshBooks,
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.1,
              child: YearGroupsChips(
                selectedYearGroup: selectedYearGroup,
                onYearGroupSelected: (yearGroup) {
                  ref.read(yearGroupStateProvider.notifier).state = yearGroup;
                },
              ),
            ),
            Expanded(
              child: books.when(
                data: (ebooks) => _LibraryViewLoadedMobile(
                  books: ebooks,
                ),
                error: (error, __) {
                  return Text('Something Error');
                },
                loading: () => _LibraryViewMobileLoading(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _LibraryViewMobileLoading extends _LibraryViewLoadingBase {
  @override
  int get crossAxisCount => 2;

  @override
  double get gridViewChildAspectRatio => 3 / 4;

  @override
  double get placeholderImageAspectRatio => 1;

  @override
  int get placeholderItemsCount => 6;
}

class _LibraryViewLoadedMobile extends ConsumerWidget {
  const _LibraryViewLoadedMobile({
    required this.books,
  });
  final List<Ebook> books;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GridView.builder(
      padding: const EdgeInsets.all(kSpacingSmall),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 2,
        crossAxisSpacing: kSpacingSmall,
      ),
      itemCount: books.length,
      itemBuilder: (context, index) {
        final book = books.elementAt(index);
        final bookPages = ref.watch(
          ebookPagesProvider(downloadUrl: book.downloadUrl),
        );

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    aspectRatio: 3 / 4,
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
            Text(book.name),
            Text(book.fileSizeForHuman),
            bookPages.maybeWhen(
              data: (pages) => Text("$pages ${plural("page", pages)}"),
              orElse: () => const SizedBox.shrink(),
            )
          ],
        );
      },
    );
  }
}
