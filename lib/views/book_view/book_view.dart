import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uec_textbooks/constants/spacing.dart';
import 'package:uec_textbooks/providers/ebooks_provider.dart';

class BookView extends ConsumerWidget {
  const BookView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final book = ref.watch(viewBookProvider);
    final pdfFile = ref.watch(viewBookPDFViewerProvider);
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(kExpandedAppBarHeight),
          child: FlexibleSpaceBar(
            titlePadding: const EdgeInsets.all(kSpacingMedium),
            centerTitle: false,
            title: Text(
              book?.title ?? '',
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ),
      body: pdfFile.maybeWhen(
        data: (pdfDoc) {
          if (pdfDoc != null) {
            return PDFViewer(
              document: pdfDoc,
              panLimit: 0.25,
            );
          }
          return const SizedBox.shrink();
        },
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }
}
