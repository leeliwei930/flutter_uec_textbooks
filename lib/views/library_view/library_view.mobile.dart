part of 'library_view.dart';

class _LibraryViewMobile extends LibraryView {
  const _LibraryViewMobile({super.key});

  @override
  LibraryViewState createState() => _LibraryViewMobileState();
}

class _LibraryViewMobileState extends LibraryViewState {
  @override
  Widget build(BuildContext context) {
    final books = ref.watch(booksProvider);
    final selectedYearGroup = ref.watch(yearGroupStateProvider);
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: refreshBooks,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return CustomScrollView(
              slivers: [
                SliverAppBar(
                  pinned: true,
                  expandedHeight: constraints.maxHeight * 0.2,
                  elevation: 0,
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    background: Image.asset(
                      ImageAssets.bookPages,
                      fit: BoxFit.cover,
                    ),
                    centerTitle: false,
                    titlePadding: const EdgeInsets.symmetric(vertical: kSpacingMedium, horizontal: kSpacingMedium),
                    title: Text("yearGroup.${selectedYearGroup.name}".tr()),
                  ),
                ),
                SliverPersistentHeader(
                  pinned: true,
                  delegate: _StickySliverPersistentYearGroupBar(
                    selectedYearGroup: selectedYearGroup,
                    onGroupSelected: (yearGroup) {
                      ref.read(yearGroupStateProvider.notifier).state = yearGroup;
                    },
                  ),
                ),
                books.when(
                  data: (ebooks) => _LibraryViewMobileLoaded(
                    yearGroup: selectedYearGroup,
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

class _StickySliverPersistentYearGroupBar extends SliverPersistentHeaderDelegate {
  const _StickySliverPersistentYearGroupBar({
    required this.selectedYearGroup,
    required this.onGroupSelected,
  });

  final YearGroup selectedYearGroup;
  final Function(YearGroup) onGroupSelected;
  @override
  double get maxExtent => kToolbarHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Card(
      borderOnForeground: false,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      margin: EdgeInsets.zero,
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SizedBox(
        height: maxExtent,
        child: YearGroupsChips(
          selectedYearGroup: selectedYearGroup,
          onYearGroupSelected: onGroupSelected,
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
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
  const _LibraryViewMobileLoaded({
    required super.books,
    required super.yearGroup,
  });

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
