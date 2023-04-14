// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$booksHash() => r'218dec9773b727a9515c3cf31cb2d335192a854f';

/// See also [books].
@ProviderFor(books)
final booksProvider = FutureProvider<List<Book>>.internal(
  books,
  name: r'booksProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$booksHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef BooksRef = FutureProviderRef<List<Book>>;
String _$bookPagesCacheHash() => r'e89f76dde11011e51688bf23d502acba1bdcfb28';

/// See also [bookPagesCache].
@ProviderFor(bookPagesCache)
final bookPagesCacheProvider = Provider<YearGroupEbookPages>.internal(
  bookPagesCache,
  name: r'bookPagesCacheProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$bookPagesCacheHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef BookPagesCacheRef = ProviderRef<YearGroupEbookPages>;
String _$bookPagesHash() => r'28535aac387bfbe86c87815d9e9a49d7e37f1106';

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

typedef BookPagesRef = FutureProviderRef<int>;

/// See also [bookPages].
@ProviderFor(bookPages)
const bookPagesProvider = BookPagesFamily();

/// See also [bookPages].
class BookPagesFamily extends Family<AsyncValue<int>> {
  /// See also [bookPages].
  const BookPagesFamily();

  /// See also [bookPages].
  BookPagesProvider call({
    required Book book,
  }) {
    return BookPagesProvider(
      book: book,
    );
  }

  @override
  BookPagesProvider getProviderOverride(
    covariant BookPagesProvider provider,
  ) {
    return call(
      book: provider.book,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'bookPagesProvider';
}

/// See also [bookPages].
class BookPagesProvider extends FutureProvider<int> {
  /// See also [bookPages].
  BookPagesProvider({
    required this.book,
  }) : super.internal(
          (ref) => bookPages(
            ref,
            book: book,
          ),
          from: bookPagesProvider,
          name: r'bookPagesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookPagesHash,
          dependencies: BookPagesFamily._dependencies,
          allTransitiveDependencies: BookPagesFamily._allTransitiveDependencies,
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

String _$viewBookHash() => r'a2512fb95c96359fce8de9507ea6fb6d3d830d22';

/// See also [viewBook].
@ProviderFor(viewBook)
final viewBookProvider = AutoDisposeProvider<Book?>.internal(
  viewBook,
  name: r'viewBookProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$viewBookHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ViewBookRef = AutoDisposeProviderRef<Book?>;
String _$viewBookPDFViewerHash() => r'0f6d3d430bdb4b1c3563d2f545875c7e279efc51';
typedef ViewBookPDFViewerRef = AutoDisposeFutureProviderRef<PdfDocument>;

/// See also [viewBookPDFViewer].
@ProviderFor(viewBookPDFViewer)
const viewBookPDFViewerProvider = ViewBookPDFViewerFamily();

/// See also [viewBookPDFViewer].
class ViewBookPDFViewerFamily extends Family<AsyncValue<PdfDocument>> {
  /// See also [viewBookPDFViewer].
  const ViewBookPDFViewerFamily();

  /// See also [viewBookPDFViewer].
  ViewBookPDFViewerProvider call({
    bool isViewingOffline = false,
  }) {
    return ViewBookPDFViewerProvider(
      isViewingOffline: isViewingOffline,
    );
  }

  @override
  ViewBookPDFViewerProvider getProviderOverride(
    covariant ViewBookPDFViewerProvider provider,
  ) {
    return call(
      isViewingOffline: provider.isViewingOffline,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'viewBookPDFViewerProvider';
}

/// See also [viewBookPDFViewer].
class ViewBookPDFViewerProvider extends AutoDisposeFutureProvider<PdfDocument> {
  /// See also [viewBookPDFViewer].
  ViewBookPDFViewerProvider({
    this.isViewingOffline = false,
  }) : super.internal(
          (ref) => viewBookPDFViewer(
            ref,
            isViewingOffline: isViewingOffline,
          ),
          from: viewBookPDFViewerProvider,
          name: r'viewBookPDFViewerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$viewBookPDFViewerHash,
          dependencies: ViewBookPDFViewerFamily._dependencies,
          allTransitiveDependencies:
              ViewBookPDFViewerFamily._allTransitiveDependencies,
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

String _$offlineBookFileStorageServiceHash() =>
    r'20926b9c9c9218617a46d903d7430776c4630d7d';

/// See also [offlineBookFileStorageService].
@ProviderFor(offlineBookFileStorageService)
final offlineBookFileStorageServiceProvider =
    AutoDisposeProvider<OfflineBookFileStorageService>.internal(
  offlineBookFileStorageService,
  name: r'offlineBookFileStorageServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$offlineBookFileStorageServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef OfflineBookFileStorageServiceRef
    = AutoDisposeProviderRef<OfflineBookFileStorageService>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
