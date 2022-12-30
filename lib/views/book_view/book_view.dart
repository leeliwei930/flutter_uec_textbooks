import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uec_textbooks/providers/ebooks_provider.dart';

class BookView extends ConsumerWidget {
  const BookView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final book = ref.watch(viewBookProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(book?.title ?? ''),
      ),
    );
  }
}
