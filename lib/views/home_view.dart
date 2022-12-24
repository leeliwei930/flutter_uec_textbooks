import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uec_textbooks/providers/navigation_providers.dart';

class HomeView extends ConsumerWidget {
  const HomeView({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final routeNames = [
      router.namedLocation('library'),
      router.namedLocation('saved-books'),
      router.namedLocation('settings'),
    ];
    final routeIndex = routeNames.indexWhere(
      (element) => element.startsWith(router.location),
    );

    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: routeIndex > 0 ? routeIndex : 0,
        onTap: (value) => router.go(routeNames.elementAt(value)),
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
