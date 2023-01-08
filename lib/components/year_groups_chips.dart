import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:uec_textbooks_app/constants/spacing.dart';
import 'package:uec_textbooks_app/models/year_group.dart';

class YearGroupsChips extends StatelessWidget {
  const YearGroupsChips({
    super.key,
    required this.selectedYearGroup,
    this.onYearGroupSelected,
  });

  final YearGroup selectedYearGroup;
  final Function(YearGroup)? onYearGroupSelected;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: YearGroup.values.length,
      padding: const EdgeInsets.all(kSpacingSmall),
      separatorBuilder: (context, index) {
        if (index != YearGroup.values.length - 1) {
          return const SizedBox(
            width: kSpacingXSmall,
          );
        }
        return const SizedBox.shrink();
      },
      itemBuilder: (context, index) {
        final yearGroup = YearGroup.values.elementAt(index);
        return ChoiceChip(
          label: Text("yearGroup.${yearGroup.name}".tr()),
          selected: yearGroup == selectedYearGroup,
          selectedColor: Theme.of(context).chipTheme.selectedColor,
          onSelected: (_) {
            onYearGroupSelected?.call(yearGroup);
          },
        );
      },
    );
  }
}
