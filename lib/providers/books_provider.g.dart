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
String $bookPagesHash() => r'709e221766fc3ee769369afc9288106697384386';

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
String $viewBookPDFViewerHash() => r'0f6d3d430bdb4b1c3563d2f545875c7e279efc51';

/// See also [viewBookPDFViewer].
class ViewBookPDFViewerProvider extends AutoDisposeFutureProvider<PdfDocument> {
  ViewBookPDFViewerProvider({
    this.isViewingOffline = false,
  }) : super(
          (ref) => viewBookPDFViewer(
            ref,
            isViewingOffline: isViewingOffline,
          ),
          from: viewBookPDFViewerProvider,
          name: r'viewBookPDFViewerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $viewBookPDFViewerHash,
        );

  final bool isViewingOffline;

  @override
  bool operator ==(Object other) {
    return other is ViewBookPDFViewerProvider &&
        other.isViewingOffline == isViewingOffline;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, isViewingOffline.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef ViewBookPDFViewerRef = AutoDisposeFutureProviderRef<PdfDocument>;

/// See also [viewBookPDFViewer].
final viewBookPDFViewerProvider = ViewBookPDFViewerFamily();

class ViewBookPDFViewerFamily extends Family<AsyncValue<PdfDocument>> {
  ViewBookPDFViewerFamily();

  ViewBookPDFViewerProvider call({
    bool isViewingOffline = false,
  }) {
    return ViewBookPDFViewerProvider(
      isViewingOffline: isViewingOffline,
    );
  }

  @override
  AutoDisposeFutureProvider<PdfDocument> getProviderOverride(
    covariant ViewBookPDFViewerProvider provider,
  ) {
    return call(
      isViewingOffline: provider.isViewingOffline,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'viewBookPDFViewerProvider';
}

String $offlineBookFileStorageServiceHash() =>
    r'20926b9c9c9218617a46d903d7430776c4630d7d';

/// See also [offlineBookFileStorageService].
final offlineBookFileStorageServiceProvider =
    AutoDisposeProvider<OfflineBookFileStorageService>(
  offlineBookFileStorageService,
  name: r'offlineBookFileStorageServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $offlineBookFileStorageServiceHash,
);
typedef OfflineBookFileStorageServiceRef
    = AutoDisposeProviderRef<OfflineBookFileStorageService>;
