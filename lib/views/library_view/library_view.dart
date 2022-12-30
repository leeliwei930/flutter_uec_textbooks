import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';
import 'package:uec_textbooks/components/year_groups_chips.dart';
import 'package:uec_textbooks/constants/image_assets.dart';
import 'package:uec_textbooks/constants/spacing.dart';
import 'package:uec_textbooks/models/ebook.dart';
import 'package:uec_textbooks/models/year_group.dart';
import 'package:uec_textbooks/providers/ebooks_provider.dart';
import 'package:uec_textbooks/utils/textbook_cover_image.dart';

part 'library_view.mobile.dart';
part 'library_view.tablet.dart';
part 'state/loaded.dart';
part 'state/loading.dart';

abstract class LibraryView extends ConsumerStatefulWidget {
  const LibraryView({
    super.key,
  });

  factory LibraryView.mobile({
    Key? key,
  }) =>
      _LibraryViewMobile(key: key);

  factory LibraryView.tablet({Key? key}) => _LibraryViewTablet(key: key);
}

abstract class LibraryViewState extends ConsumerState<LibraryView> {
  Future<void> refreshBooks() {
    ref.invalidate(ebooksProvider);
    return ref.read(ebooksProvider.future);
  }
}
