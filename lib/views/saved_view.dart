import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uec_textbooks/providers/saved_library_provider.dart';

class SavedView extends ConsumerWidget {
  const SavedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final savedLibraryBox = ref.watch(savedLibraryBoxProvider);
    return Scaffold(
      body: savedLibraryBox.maybeWhen(
        data: (box) {
          if (box.isEmpty) {
            return Center(child: const Text('empty box'));
          } else {
            return Center(child: Text(box.length.toString()));
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
