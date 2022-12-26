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
      body: RefreshIndicator(
        onRefresh: refreshBooks,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return CustomScrollView(
              slivers: [
                SliverAppBar(
                  floating: true,
                  forceElevated: true,
                  collapsedHeight: constraints.maxHeight * 0.10,
                  expandedHeight: constraints.maxHeight * 0.25,
                  title: Text(selectedYearGroup.name.tr()),
                  flexibleSpace: YearGroupsChips(
                    selectedYearGroup: selectedYearGroup,
                    onYearGroupSelected: (yearGroup) {
                      ref.read(yearGroupStateProvider.notifier).state = yearGroup;
                    },
                  ),
                ),
                books.when(
                  data: (ebooks) => _LibraryViewMobileLoaded(
                    books: ebooks,
                  ),
                  error: (error, __) {
                    return const SliverFillRemaining(child: Text('Something Error'));
                  },
                  loading: () => _LibraryViewMobileLoading(),
                ),
              ],
            );
          },
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

class _LibraryViewMobileLoaded extends _LibraryViewLoadedBase {
  const _LibraryViewMobileLoaded({required super.books});

  @override
  double get childAspectRatio => 1 / 2;

  @override
  int get crossAxisCount => 2;

  @override
  double get imagePlaceholderAspectRatio => 3 / 4;

  @override
  double get crossAxisSpacing => kSpacingSmall;

  @override
  double get mainAxisSpacing => kSpacingSmall;
}
