import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uec_textbooks_app/constants/spacing.dart';

class EmptyStateView extends StatelessWidget {
  const EmptyStateView({
    super.key,
    this.primaryView = const SizedBox.shrink(),
    required this.headline,
    this.description,
    this.actions = const [],
    this.actionAlignmentAxis = Axis.vertical,
  });

  final Widget primaryView;
  final String headline;
  final String? description;
  final List<Widget> actions;
  final Axis actionAlignmentAxis;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(kSpacingMedium),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              children: [
                primaryView,
                Text(
                  headline,
                  style: textStyle.titleLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: kSpacingMedium,
                ),
                if (description?.isNotEmpty ?? false)
                  Text(
                    description!,
                    style: textStyle.subtitle1,
                    textAlign: TextAlign.center,
                  ),
                if (actions.isNotEmpty) ...[
                  const SizedBox(
                    height: kSpacingSmall,
                  ),
                  if (actionAlignmentAxis == Axis.vertical)
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: actions,
                    )
                  else
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: actions,
                    )
                ]
              ],
            );
          },
        ),
      ),
    );
  }
}
