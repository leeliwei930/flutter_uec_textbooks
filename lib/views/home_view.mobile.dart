part of 'home_view.dart';

class _HomeViewMobile extends HomeView {
  const _HomeViewMobile({
    super.key,
    required super.child,
  });

  @override
  _HomeViewMobileState createState() => _HomeViewMobileState();
}

class _HomeViewMobileState extends HomeViewState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: routeIndex > 0 ? routeIndex : 0,
        onTap: (value) => _router.go(_routeNames.elementAt(value)),
        items: [
          BottomNavigationBarItem(
            label: "library".tr(),
            icon: const Icon(
              Icons.library_books,
            ),
          ),
          BottomNavigationBarItem(
            label: "saved".tr(),
            icon: const Icon(Icons.bookmarks),
          ),
          BottomNavigationBarItem(
            label: "settings".tr(),
            icon: const Icon(Icons.settings),
          )
        ],
      ),
    );
  }
}
