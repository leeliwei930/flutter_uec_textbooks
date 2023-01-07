import 'package:easy_localization/easy_localization.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:uec_textbooks/constants/spacing.dart';
import 'package:uec_textbooks/models/year_group.dart';
import 'package:uec_textbooks/providers/books_provider.dart';
import 'package:uec_textbooks/providers/navigation_providers.dart';

part 'home_view.mobile.dart';
part 'home_view.tablet.dart';

abstract class HomeView extends ConsumerStatefulWidget {
  const HomeView({
    super.key,
    required this.child,
  });

  factory HomeView.mobile({Key? key, required Widget child}) => _HomeViewMobile(key: key, child: child);
  factory HomeView.tablet({Key? key, required Widget child}) => _HomeViewTablet(key: key, child: child);

  final Widget child;
}

abstract class HomeViewState extends ConsumerState<HomeView> {
  late final GoRouter _router;
  final _routeNames = <String>[];

  @override
  void initState() {
    super.initState();

    _router = ref.read(routerProvider);
    _routeNames.addAll([
      _router.namedLocation('library'),
      _router.namedLocation('saved-books'),
    ]);
  }

  int get routeIndex => _routeNames.indexWhere(
        (element) => element.startsWith(_router.location),
      );
}
