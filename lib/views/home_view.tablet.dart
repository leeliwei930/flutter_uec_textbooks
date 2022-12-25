part of 'home_view.dart';

class _HomeViewTablet extends HomeView {
  const _HomeViewTablet({
    super.key,
    required super.child,
  });

  @override
  _HomeViewTabletState createState() => _HomeViewTabletState();
}

class _HomeViewTabletState extends HomeViewState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            extended: true,
            onDestinationSelected: (value) => _router.go(
              _routeNames.elementAt(value),
            ),
            destinations: [
              NavigationRailDestination(
                label: Text(
                  "library".tr(),
                ),
                icon: const Icon(
                  Icons.library_books,
                ),
              ),
              NavigationRailDestination(
                label: Text(
                  "saved".tr(),
                ),
                icon: const Icon(
                  Icons.bookmarks,
                ),
              ),
              NavigationRailDestination(
                label: Text(
                  "settings".tr(),
                ),
                icon: const Icon(
                  Icons.settings,
                ),
              ),
            ],
            selectedIndex: routeIndex,
          ),
          Expanded(child: widget.child),
        ],
      ),
    );
  }
}
