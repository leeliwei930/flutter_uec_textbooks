import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uec_textbooks/providers/ebooks_provider.dart';

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
                data: (ebooks) => ListView.builder(
                  itemCount: ebooks.length,
                  itemBuilder: (context, index) {
                    final ebook = ebooks.elementAt(index);
                    return ListTile(
                      title: Text(ebook.name),
                    );
                  },
                ),
                error: (error, __) {
                  print(error);
                  return Text('Something Error');
                },
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
