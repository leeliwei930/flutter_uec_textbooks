part of 'library_view.dart';

class _LibraryViewTablet extends LibraryView {
  const _LibraryViewTablet({super.key});

  @override
  LibraryViewState createState() => _LibraryViewTabletState();
}

class _LibraryViewTabletState extends LibraryViewState {
  @override
  Widget build(BuildContext context) {
    final books = ref.watch(ebooksProvider);
    final selectedYearGroup = ref.watch(yearGroupStateProvider);
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: refreshBooks,
        child: LayoutBuilder(builder: (context, constraints) {
          return CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                expandedHeight: constraints.maxHeight * 0.25,
                floating: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    ImageAssets.bookPages,
                    fit: BoxFit.cover,
                  ),
                  collapseMode: CollapseMode.pin,
                  centerTitle: false,
                  titlePadding: const EdgeInsets.symmetric(vertical: kSpacingMedium, horizontal: kSpacingMedium),
                  title: Text("yearGroup.${selectedYearGroup.name}".tr()),
                ),
              ),
              books.when(
                data: (books) => _LibraryViewTabletLoaded(
                  yearGroup: selectedYearGroup,
                  books: books,
                ),
                error: (_, __) => const SliverFillRemaining(
                  child: Text('error'),
                ),
                loading: () => _LibraryViewTabletLoading(),
              ),
            ],
          );
        }),
      ),
    );
  }
}

class _LibraryViewTabletLoading extends _LibraryViewLoadingBase {
  @override
  int get crossAxisCount => 4;

  @override
  double get gridViewChildAspectRatio => 1 / 2;

  @override
  double get placeholderImageAspectRatio => 3 / 4;

  @override
  int get placeholderItemsCount => 12;
}

class _LibraryViewTabletLoaded extends _LibraryViewLoadedBase {
  const _LibraryViewTabletLoaded({
    required super.books,
    required super.yearGroup,
  });

  @override
  int get crossAxisCount => 4;

  @override
  double get childAspectRatio => 0.45;

  @override
  double get imagePlaceholderAspectRatio => 3 / 4;

  @override
  double get crossAxisSpacing => kSpacingMedium;

  @override
  double get mainAxisSpacing => kSpacingMedium;
}
