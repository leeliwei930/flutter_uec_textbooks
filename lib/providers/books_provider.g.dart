// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String $booksHash() => r'218dec9773b727a9515c3cf31cb2d335192a854f';

/// See also [books].
final booksProvider = FutureProvider<List<Book>>(
  books,
  name: r'booksProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : $booksHash,
);
typedef BooksRef = FutureProviderRef<List<Book>>;
String $_bookPagesHash() => r'aa32a60ba2973558b6037c7f3d6f0c984a5918ed';

/// See also [_bookPages].
final _bookPagesProvider = Provider<YearGroupEbookPages>(
  _bookPages,
  name: r'_bookPagesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : $_bookPagesHash,
);
typedef _BookPagesRef = ProviderRef<YearGroupEbookPages>;
String $bookPagesHash() => r'86166db2b467452db7cb4d5a17277559e0110f62';

/// See also [bookPages].
class BookPagesProvider extends FutureProvider<int> {
  BookPagesProvider({
    required this.book,
  }) : super(
          (ref) => bookPages(
            ref,
            book: book,
          ),
          from: bookPagesProvider,
          name: r'bookPagesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $bookPagesHash,
        );

  final Book book;

  @override
  bool operator ==(Object other) {
    return other is BookPagesProvider && other.book == book;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, book.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef BookPagesRef = FutureProviderRef<int>;

/// See also [bookPages].
final bookPagesProvider = BookPagesFamily();

class BookPagesFamily extends Family<AsyncValue<int>> {
  BookPagesFamily();

  BookPagesProvider call({
    required Book book,
  }) {
    return BookPagesProvider(
      book: book,
    );
  }

  @override
  FutureProvider<int> getProviderOverride(
    covariant BookPagesProvider provider,
  ) {
    return call(
      book: provider.book,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'bookPagesProvider';
}

String $viewBookHash() => r'a2512fb95c96359fce8de9507ea6fb6d3d830d22';

/// See also [viewBook].
final viewBookProvider = AutoDisposeProvider<Book?>(
  viewBook,
  name: r'viewBookProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : $viewBookHash,
);
typedef ViewBookRef = AutoDisposeProviderRef<Book?>;
String $viewBookPDFViewerHash() => r'e07b8c79e11a7dcc68e481ff837b8a1ba15be538';

/// See also [viewBookPDFViewer].
final viewBookPDFViewerProvider = AutoDisposeFutureProvider<PDFDocument?>(
  viewBookPDFViewer,
  name: r'viewBookPDFViewerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $viewBookPDFViewerHash,
);
typedef ViewBookPDFViewerRef = AutoDisposeFutureProviderRef<PDFDocument?>;
