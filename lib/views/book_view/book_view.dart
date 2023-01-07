import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:uec_textbooks/constants/lottie_assets.dart';
import 'package:uec_textbooks/constants/spacing.dart';
import 'package:uec_textbooks/providers/books_provider.dart';

class BookView extends ConsumerWidget {
  const BookView({
    super.key,
    this.isViewingOffline = false,
  });

  final bool isViewingOffline;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final book = ref.watch(viewBookProvider);
    final pdfFile = ref.watch(viewBookPDFViewerProvider(isViewingOffline: isViewingOffline));
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
        SliverFillRemaining(
          child: pdfFile.maybeWhen(
            data: (pdfDoc) {
              if (pdfDoc != null) {
                return PDFViewer(
                  document: pdfDoc,
                  panLimit: 0.25,
                  progressIndicator: Lottie.asset(
                    LottieAssets.fileLoading,
                  ),
                );
              }
              return null;
            },
            loading: () => Lottie.asset(LottieAssets.fileLoading),
            orElse: () => const SizedBox.shrink(),
          ),
        )
      ],
    ));
  }
}
