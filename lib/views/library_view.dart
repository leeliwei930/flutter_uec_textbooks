import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';
import 'package:uec_textbooks/constants/spacing.dart';
import 'package:uec_textbooks/models/ebook.dart';
import 'package:uec_textbooks/providers/ebooks_provider.dart';
import 'package:uec_textbooks/utils/textbook_cover_image.dart';

class LibraryView extends ConsumerWidget {
  const LibraryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final books = ref.watch(ebooksProvider);

    return Scaffold(
      appBar: AppBar(),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(ebooksProvider);
          return ref.read(ebooksProvider.future);
        },
        child: Column(
          children: [
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
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        final size = MediaQuery.of(context).size;
        final halfWidth = size.width * 0.5;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 12,
              child: Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: kSpacingXSmall,
            ),
            Flexible(
              flex: 2,
              child: Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  margin: const EdgeInsets.only(bottom: kSpacingXSmall),
                  width: halfWidth * 0.8,
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  margin: const EdgeInsets.only(bottom: kSpacingXSmall),
                  width: halfWidth * 0.6,
                ),
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
        crossAxisSpacing: kSpacingXSmall,
        mainAxisSpacing: kSpacingXSmall,
      ),
      itemCount: books.length,
      itemBuilder: (context, index) {
        final size = MediaQuery.of(context).size;
        final halfWidth = size.width * 0.5;
        final book = books.elementAt(index);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 12,
              child: Container(
                child: Image.network(
                  fit: BoxFit.contain,
                  width: double.infinity,
                  TextBookCoverImage.url(
                    yearGroup: ref.read(selectedYearGroupProvider),
                    filename: book.imageName,
                  ),
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Expanded(
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(
              height: kSpacingXSmall,
            ),
            Flexible(
              flex: 2,
              child: Text(book.name),
            ),
          ],
        );
      },
    );
  }
}
