import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uec_textbooks/constants/spacing.dart';

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
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              primaryView,
              Text(
                headline,
                style: textStyle.titleLarge,
              ),
              const SizedBox(
                height: kSpacingMedium,
              ),
              if (description?.isNotEmpty ?? false)
                SizedBox(
                  width: constraints.maxWidth * 0.85,
                  child: Text(
                    description!,
                    style: textStyle.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
              if (actions.isNotEmpty)
                if (actionAlignmentAxis == Axis.vertical)
                  Column(
                    children: actions,
                  )
                else
                  Row(
                    children: actions,
                  )
            ],
          );
        },
      ),
    );
  }
}
