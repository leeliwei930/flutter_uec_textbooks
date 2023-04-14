import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:pdfx/pdfx.dart';
import 'package:uec_textbooks_app/constants/lottie_assets.dart';
import 'package:uec_textbooks_app/constants/spacing.dart';
import 'package:uec_textbooks_app/models/book.dart';
import 'package:uec_textbooks_app/providers/books_provider.dart';

class BookView extends ConsumerStatefulWidget {
  const BookView({
    super.key,
    this.isViewingOffline = false,
  });

  final bool isViewingOffline;

  @override
  ConsumerState<BookView> createState() => _BookViewState();
}

class _BookViewState extends ConsumerState<BookView> {
  late final Book? book;
  late final Future<PdfDocument> pdfFile;
  late final PdfController _pdfController;
  @override
  void initState() {
    super.initState();
    book = ref.read(viewBookProvider);
    pdfFile = ref.read(viewBookPDFViewerProvider(isViewingOffline: widget.isViewingOffline).future).asStream().last;
    _pdfController = PdfController(document: pdfFile);
  }

  @override
  void dispose() {
    _pdfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final expandedHeight = (MediaQuery.of(context).size.height - MediaQuery.of(context).viewInsets.vertical) * 0.15;
    final collapsedHeight = expandedHeight - (expandedHeight * 0.1);

    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: expandedHeight,
          collapsedHeight: collapsedHeight,
          flexibleSpace: FlexibleSpaceBar(
            titlePadding: const EdgeInsets.all(kSpacingMedium),
            centerTitle: false,
            expandedTitleScale: 1.25,
            title: Text(
              book?.title ?? '',
              textAlign: TextAlign.left,
            ),
          ),
        ),
        SliverAppBar(
          automaticallyImplyLeading: false,
          pinned: true,
          expandedHeight: kToolbarHeight,
          collapsedHeight: kToolbarHeight,
          actions: [
            IconButton(
              icon: const Icon(Icons.navigate_before),
              onPressed: () {
                _pdfController.previousPage(
                  curve: Curves.ease,
                  duration: const Duration(milliseconds: 100),
                );
              },
            ),
            PdfPageNumber(
              controller: _pdfController,
              builder: (_, loadingState, page, pagesCount) => Container(
                alignment: Alignment.center,
                child: Text(
                  '$page/${pagesCount ?? 0}',
                  style: const TextStyle(fontSize: 22),
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.navigate_next),
              onPressed: () {
                _pdfController.nextPage(
                  curve: Curves.ease,
                  duration: const Duration(milliseconds: 100),
                );
              },
            ),
          ],
        ),
        SliverFillRemaining(
          child: PdfView(
            controller: _pdfController,
            builders: PdfViewBuilders<DefaultBuilderOptions>(
              options: const DefaultBuilderOptions(),
              documentLoaderBuilder: (_) => Lottie.asset(
                LottieAssets.fileLoading,
              ),
            ),
          ),
        )
      ],
    ));
  }
}
