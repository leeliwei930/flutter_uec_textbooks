import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';
import 'package:uec_textbooks/components/year_groups_chips.dart';
import 'package:uec_textbooks/constants/spacing.dart';
import 'package:uec_textbooks/models/ebook.dart';
import 'package:uec_textbooks/providers/ebooks_provider.dart';
import 'package:uec_textbooks/utils/textbook_cover_image.dart';

part 'library_view.mobile.dart';

abstract class LibraryView extends ConsumerWidget {
  const LibraryView({
    super.key,
  });

  factory LibraryView.mobile({
    Key? key,
  }) =>
      _LibraryViewMobile(key: key);
}
