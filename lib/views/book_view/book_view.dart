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
      body: LayoutBuilder(
        builder: (context, constraints) {
          return CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: constraints.maxHeight * 0.25,
                collapsedHeight: constraints.maxHeight * 0.15,
                pinned: true,
                floating: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: false,
                  titlePadding: EdgeInsets.symmetric(vertical: kSpacingMedium, horizontal: kSpacingMedium),
                  title: Text(book?.title ?? ''),
                ),
              ),
              SliverFillRemaining(
                child: pdfFile.maybeWhen(
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
              )
            ],
          );
        },
      ),
    );
  }
}
