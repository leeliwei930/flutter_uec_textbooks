import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';
import 'package:uec_textbooks/components/year_groups_chips.dart';
import 'package:uec_textbooks/constants/spacing.dart';
import 'package:uec_textbooks/models/ebook.dart';
import 'package:uec_textbooks/providers/ebooks_provider.dart';
import 'package:uec_textbooks/utils/textbook_cover_image.dart';

class LibraryView extends ConsumerWidget {
  const LibraryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final books = ref.watch(ebooksProvider);
    final selectedYearGroup = ref.watch(yearGroupStateProvider);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(ebooksProvider);
          return ref.read(ebooksProvider.future);
        },
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.1,
              child: YearGroupsChips(
                selectedYearGroup: selectedYearGroup,
                onYearGroupSelected: (yearGroup) {
                  ref.read(yearGroupStateProvider.notifier).state = yearGroup;
                },
              ),
            ),
            Expanded(
              child: books.when(
                data: (ebooks) => _LibraryViewLoaded(
                  books: ebooks,
                ),
                error: (error, __) {
                  return Text('Something Error');
                },
                loading: () => _LibraryViewLoading(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _LibraryViewLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(kSpacingSmall),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: kSpacingXSmall,
        mainAxisSpacing: kSpacingXSmall,
        childAspectRatio: 1 / 2,
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        final size = MediaQuery.of(context).size;
        final halfWidth = size.width * 0.5;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                child: AspectRatio(
                  aspectRatio: 3/4,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: kSpacingXSmall,
            ),
            Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                margin: const EdgeInsets.only(bottom: kSpacingXSmall),
                width: halfWidth * 0.8,
                height: kSpacingSmall,
              ),
            ),
            Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                margin: const EdgeInsets.only(bottom: kSpacingXSmall),
                width: halfWidth * 0.6,
                height: kSpacingSmall,
              ),
            ),
            Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                margin: const EdgeInsets.only(bottom: kSpacingXSmall),
                width: halfWidth * 0.3,
                height: kSpacingSmall,
              ),
            ),
          ],
        );
      },
    );
  }
}

class _LibraryViewLoaded extends ConsumerWidget {
  const _LibraryViewLoaded({
    required this.books,
  });
  final List<Ebook> books;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GridView.builder(
      padding: const EdgeInsets.all(kSpacingSmall),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 2,
        crossAxisSpacing: kSpacingSmall,
      ),
      itemCount: books.length,
      itemBuilder: (context, index) {
        final book = books.elementAt(index);
        final bookPages = ref.watch(
          ebookPagesProvider(downloadUrl: book.downloadUrl),
        );

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              TextBookCoverImage.url(
                yearGroup: ref.read(yearGroupStateProvider),
                filename: book.imageName,
              ),
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: AspectRatio(
                    aspectRatio: 3/4,
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                );
              },
            ),
            const SizedBox(
              height: kSpacingXSmall,
            ),
            Text(book.name),
            Text(book.fileSizeForHuman),
            bookPages.maybeWhen(
              data: (pages) => Text("$pages ${plural("page", pages)}"),
              orElse: () => const SizedBox.shrink(),
            )
          ],
        );
      },
    );
  }
}
