import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:uec_textbooks/constants/lottie_assets.dart';
import 'package:uec_textbooks/constants/spacing.dart';
import 'package:uec_textbooks/models/book.dart';
import 'package:uec_textbooks/models/book_group.dart';
import 'package:uec_textbooks/providers/saved_library_provider.dart';

class SavedView extends ConsumerWidget {
  const SavedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final savedLibraryBox = ref.watch(savedLibraryBoxProvider);
    return Scaffold(
      body: savedLibraryBox.maybeWhen(
        data: (bookCollection) {
          if (bookCollection.isEmpty) {
            return _EmptySavedLibrary();
          } else {
            return _SavedLibraryLoaded(
              bookCollection: bookCollection,
            );
          }
        },
        error: (error, stackTrace) {
          return const SizedBox.shrink();
        },
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }
}

class _SavedLibraryLoaded extends StatelessWidget {
  const _SavedLibraryLoaded({required this.bookCollection});

  final Box<Book> bookCollection;

  List<Widget> _buildSliverWidgets(
    BuildContext context, {
    List<BookGroup> bookGroups = const [],
  }) {
    final slivers = <Widget>[];
    final colorScheme = Theme.of(context).colorScheme;
    final textStyle = Theme.of(context).textTheme;

    for (final bookGroup in bookGroups) {
      if (bookGroup.books.isNotEmpty) {
        slivers.add(
          SliverStickyHeader(
            header: Container(
              color: colorScheme.primary,
              padding: const EdgeInsets.symmetric(vertical: kSpacingXSmall, horizontal: kSpacingSmall),
              child: Text(
                "yearGroup.${bookGroup.yearGroup.name}".tr(),
                style: textStyle.titleMedium?.copyWith(
                  color: colorScheme.inversePrimary,
                ),
              ),
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: bookGroup.books.length,
                (context, index) {
                  final book = bookGroup.books.elementAt(index);
                  return Dismissible(
                    key: Key(book.path),
                    background: ColoredBox(
                      color: colorScheme.error,
                      child: Padding(
                        padding: const EdgeInsets.all(kSpacingSmall),
                        child: Text(
                          "Slide left to remove from saved",
                          textAlign: TextAlign.end,
                          style: textStyle.titleMedium?.copyWith(
                            color: colorScheme.inversePrimary,
                          ),
                        ),
                      ),
                    ),
                    direction: DismissDirection.endToStart,
                    onDismissed: (dismissDirection) {
                      // TODO(leeliwei930): Remove record.
                    },
                    child: ListTile(
                      title: Text(book.title),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      }
    }
    return slivers;
  }

  @override
  Widget build(BuildContext context) {
    final bookGroups = BookGroup.fromBoxCollection(bookCollection);
    return CustomScrollView(
      clipBehavior: Clip.hardEdge,
      slivers: _buildSliverWidgets(
        context,
        bookGroups: bookGroups,
      ),
    );
  }
}

class _EmptySavedLibrary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final color = Theme.of(context).colorScheme;
    return Center(
      child: Column(
        children: [
          Lottie.asset(LottieAssets.emptyData),
          Text(
            'savedLibrary.empty'.tr(),
            style: textStyle.titleLarge,
          ),
          const SizedBox(
            height: kSpacingMedium,
          ),
          Icon(
            size: 32,
            Icons.bookmark,
            color: color.error,
          ),
          const SizedBox(
            height: kSpacingSmall,
          ),
          Text(
            'savedLibrary.emptySupport'.tr(),
            style: textStyle.titleMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
