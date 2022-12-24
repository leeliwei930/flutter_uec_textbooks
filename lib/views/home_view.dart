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
        items: const [
          BottomNavigationBarItem(
            label: "Library",
            icon: Icon(
              Icons.library_books,
            ),
          ),
          BottomNavigationBarItem(
            label: "Saved",
            icon: Icon(Icons.bookmarks),
          ),
          BottomNavigationBarItem(
            label: "Settings",
            icon: Icon(Icons.settings),
          )
        ],
      ),
    );
  }
}
