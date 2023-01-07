import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:shimmer/shimmer.dart';
import 'package:uec_textbooks/components/empty_state_view.dart';
import 'package:uec_textbooks/components/year_groups_chips.dart';
import 'package:uec_textbooks/constants/image_assets.dart';
import 'package:uec_textbooks/constants/lottie_assets.dart';
import 'package:uec_textbooks/constants/spacing.dart';
import 'package:uec_textbooks/models/book.dart';
import 'package:uec_textbooks/models/year_group.dart';
import 'package:uec_textbooks/providers/books_provider.dart';
import 'package:uec_textbooks/providers/navigation_providers.dart';
import 'package:uec_textbooks/providers/offline_books_provider.dart';
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
    ref.invalidate(booksProvider);
    return ref.read(booksProvider.future);
  }
}
