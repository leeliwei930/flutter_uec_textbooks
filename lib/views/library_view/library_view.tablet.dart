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
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: refreshBooks,
        child: books.when(
          data: (books) => Text('Loaded'),
          error: (_, __) => Text('error'),
          loading: () => _LibraryViewTabletLoading(),
        ),
      ),
    );
  }
}

class _LibraryViewTabletLoading extends _LibraryViewLoadingBase {
  @override
  int get crossAxisCount => 4;

  @override
  double get gridViewChildAspectRatio => 1;

  @override
  double get placeholderImageAspectRatio => 3 / 4;

  @override
  int get placeholderItemsCount => 12;
}
