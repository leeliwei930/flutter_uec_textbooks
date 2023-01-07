import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:uec_textbooks/components/empty_state_view.dart';
import 'package:uec_textbooks/constants/lottie_assets.dart';
import 'package:uec_textbooks/constants/spacing.dart';

class LibraryErrorStateView extends ConsumerWidget {
  const LibraryErrorStateView({
    Key? key,
    this.onRefreshBooks,
    this.onViewOfflineBooks,
    required this.actionAlignmentAxis,
  }) : super(key: key);

  final VoidCallback? onRefreshBooks;
  final VoidCallback? onViewOfflineBooks;
  final Axis actionAlignmentAxis;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return EmptyStateView(
          primaryView: SizedBox(
            height: constraints.maxWidth * 0.34,
            child: LottieBuilder.asset(
              LottieAssets.noConnection,
              fit: BoxFit.contain,
            ),
          ),
          headline: 'libraryView.errorTitle'.tr(),
          description: 'libraryView.errorDescription'.tr(),
          actionAlignmentAxis: actionAlignmentAxis,
          actions: [
            ElevatedButton.icon(
              icon: const Icon(Icons.offline_bolt),
              label: Text("libraryView.viewOfflineBooks".tr().toUpperCase()),
              onPressed: onViewOfflineBooks,
            ),
            if (actionAlignmentAxis == Axis.vertical)
              const SizedBox(height: kSpacingXSmall)
            else
              const SizedBox(width: kSpacingXSmall),
            TextButton.icon(
              icon: const Icon(Icons.refresh),
              label: Text("libraryView.retry".tr().toUpperCase()),
              onPressed: onRefreshBooks,
            ),
          ],
        );
      },
    );
  }
}
