// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String $rootNavigatorKeyHash() => r'4b0ce93d32848d93c7dfbdfd3b39b280bef03fdb';

/// See also [rootNavigatorKey].
final rootNavigatorKeyProvider = AutoDisposeProvider<GlobalKey<NavigatorState>>(
  rootNavigatorKey,
  name: r'rootNavigatorKeyProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $rootNavigatorKeyHash,
);
typedef RootNavigatorKeyRef = AutoDisposeProviderRef<GlobalKey<NavigatorState>>;
String $homeViewNavigatorKeyHash() =>
    r'a12b35c23761a07b0da895447c65769e60ef1260';

/// See also [homeViewNavigatorKey].
final homeViewNavigatorKeyProvider =
    AutoDisposeProvider<GlobalKey<NavigatorState>>(
  homeViewNavigatorKey,
  name: r'homeViewNavigatorKeyProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $homeViewNavigatorKeyHash,
);
typedef HomeViewNavigatorKeyRef
    = AutoDisposeProviderRef<GlobalKey<NavigatorState>>;
String $routesHash() => r'c20c671d7a7563bc262144431d6190d27ae26e59';

/// See also [routes].
final routesProvider = AutoDisposeProvider<List<RouteBase>>(
  routes,
  name: r'routesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : $routesHash,
);
typedef RoutesRef = AutoDisposeProviderRef<List<RouteBase>>;
String $homeViewRouteHash() => r'59e9e00bcd64744db0cca4b2c5bc3408536492b6';

/// See also [homeViewRoute].
final homeViewRouteProvider = AutoDisposeProvider<ShellRoute>(
  homeViewRoute,
  name: r'homeViewRouteProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : $homeViewRouteHash,
);
typedef HomeViewRouteRef = AutoDisposeProviderRef<ShellRoute>;
String $routerHash() => r'bdc8ea3d30dd76c41a6dc8d680fae1931f4d1edc';

/// See also [router].
final routerProvider = AutoDisposeProvider<GoRouter>(
  router,
  name: r'routerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : $routerHash,
);
typedef RouterRef = AutoDisposeProviderRef<GoRouter>;
