import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uec_textbooks_app/views/book_view/book_view.dart';
import 'package:uec_textbooks_app/views/home_view/home_view.dart';
import 'package:uec_textbooks_app/views/library_view/library_view.dart';
import 'package:uec_textbooks_app/views/saved_view.dart';

part 'navigation_providers.g.dart';

final _routes = [
  GoRoute(
    name: 'library',
    path: '/library',
    pageBuilder: (context, state) => NoTransitionPage(
      child: ScreenTypeLayout.builder(
        mobile: (_) => LibraryView.mobile(),
        tablet: (_) => LibraryView.tablet(),
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
    builder: (context, state, child) => ScreenTypeLayout.builder(
      mobile: (_) => HomeView.mobile(child: child),
      tablet: (_) => HomeView.tablet(child: child),
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
    routes: [
      homeViewRoute,
      GoRoute(
          path: '/book',
          name: 'view-book',
          parentNavigatorKey: rootNavigatorKey,
          builder: (_, state) {
            final isViewingOffline = state.queryParams.containsKey('offline');
            return BookView(
              isViewingOffline: isViewingOffline,
            );
          }),
    ],
  );
}
