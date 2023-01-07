part of 'home_view.dart';

class _HomeViewTablet extends HomeView {
  const _HomeViewTablet({
    super.key,
    required super.child,
  });

  @override
  _HomeViewTabletState createState() => _HomeViewTabletState();
}

class _MenuItem {
  const _MenuItem({
    this.label,
    required this.icon,
    this.subItems = const [],
  });

  final String? label;
  final Icon icon;
  final List<YearGroup> subItems;
}

class _HomeViewTabletState extends HomeViewState with SingleTickerProviderStateMixin {
  late final ExpandableController expandableController;

  final menuItems = <_MenuItem>[];

  @override
  void initState() {
    super.initState();
    expandableController = ExpandableController(
      initialExpanded: true,
    );
    menuItems.addAll([
      _MenuItem(
          label: "library".tr(),
          icon: const Icon(
            Icons.library_books,
          ),
          subItems: YearGroup.values),
      _MenuItem(
        label: "saved".tr(),
        icon: const Icon(
          Icons.bookmarks,
        ),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    final selectedYearGroup = ref.watch(yearGroupStateProvider);
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Flexible(
              flex: 1,
              child: Column(
                children: menuItems.map(
                  (menuItem) {
                    final index = menuItems.indexWhere((element) => element == menuItem);
                    if (menuItem.subItems.isNotEmpty) {
                      if (routeIndex == index) {
                        expandableController.expanded = true;
                      } else {
                        expandableController.expanded = false;
                      }
                      return ExpandableTheme(
                        data: const ExpandableThemeData(
                          hasIcon: false,
                        ),
                        child: ExpandablePanel(
                          controller: expandableController,
                          header: ListTile(
                            selected: routeIndex == index,
                            leading: menuItem.icon,
                            title: Text(menuItem.label ?? ''),
                            onTap: () {
                              _router.go(_routeNames.elementAt(index));
                            },
                          ),
                          collapsed: const SizedBox.shrink(),
                          expanded: Column(
                            children: menuItem.subItems
                                .map(
                                  (yearGroup) => ListTile(
                                    contentPadding: const EdgeInsets.only(left: kSpacingLarge),
                                    title: Text("yearGroup.${yearGroup.name}".tr()),
                                    leading: const Icon(Icons.book),
                                    onTap: () => ref.read(yearGroupStateProvider.notifier).state = yearGroup,
                                    selected: selectedYearGroup == yearGroup,
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      );
                    }
                    return ListTile(
                      title: Text(menuItem.label ?? ''),
                      leading: menuItem.icon,
                      selected: routeIndex == index,
                      onTap: () {
                        expandableController.expanded = false;
                        _router.go(_routeNames.elementAt(index));
                      },
                    );
                  },
                ).toList(),
              ),
            ),
            Flexible(flex: 3, child: widget.child),
          ],
        ),
      ),
    );
  }
}
