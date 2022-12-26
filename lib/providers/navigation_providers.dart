import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uec_textbooks/views/home_view/home_view.dart';
import 'package:uec_textbooks/views/library_view/library_view.dart';
import 'package:uec_textbooks/views/saved_view.dart';
import 'package:uec_textbooks/views/settings_view.dart';

part 'navigation_providers.g.dart';

final _routes = [
  GoRoute(
    name: 'library',
    path: '/library',
    pageBuilder: (context, state) => NoTransitionPage(
      child: ScreenTypeLayout(
        mobile: LibraryView.mobile(),
      ),
    ),
  ),
  GoRoute(
    name: 'saved-books',
    path: '/saved',
    pageBuilder: (context, state) => const NoTransitionPage(
      child: SavedView(),
    ),
  ),
  GoRoute(
    name: 'settings',
    path: '/settings',
    pageBuilder: (context, state) => const NoTransitionPage(
      child: SettingsView(),
    ),
  ),
];

@riverpod
GlobalKey<NavigatorState> rootNavigatorKey(_) => GlobalKey<NavigatorState>();

@riverpod
GlobalKey<NavigatorState> homeViewNavigatorKey(_) => GlobalKey<NavigatorState>();

@riverpod
List<RouteBase> routes(_) => _routes;

@riverpod
ShellRoute homeViewRoute(ref) {
  return ShellRoute(
    navigatorKey: ref.read(homeViewNavigatorKeyProvider),
    routes: ref.read(routesProvider),
    builder: (context, state, child) => ScreenTypeLayout(
      mobile: HomeView.mobile(child: child),
      tablet: HomeView.tablet(child: child),
    ),
  );
}

@riverpod
GoRouter router(ref) {
  final rootNavigatorKey = ref.read(rootNavigatorKeyProvider);
  final homeViewRoute = ref.read(homeViewRouteProvider);
  return GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: '/library',
    routes: [homeViewRoute],
  );
}
