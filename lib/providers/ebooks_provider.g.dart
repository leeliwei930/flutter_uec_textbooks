// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ebooks_provider.dart';

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

String $ebooksHash() => r'851557a9c0771e43e83374ca8cb530984dd8b49e';

/// See also [ebooks].
final ebooksProvider = FutureProvider<List<Ebook>>(
  ebooks,
  name: r'ebooksProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : $ebooksHash,
);
typedef EbooksRef = FutureProviderRef<List<Ebook>>;
String $_bookPagesHash() => r'5ab27cee0462f48f9d9b0c1d6a204af11cfe1db0';

/// See also [_bookPages].
final _bookPagesProvider = Provider<YearGroupEbookPages>(
  _bookPages,
  name: r'_bookPagesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : $_bookPagesHash,
);
typedef _BookPagesRef = ProviderRef<YearGroupEbookPages>;
String $ebookPagesHash() => r'de3b4cbd313e408abff2ed9053497a9e1102a04a';

/// See also [ebookPages].
class EbookPagesProvider extends FutureProvider<int> {
  EbookPagesProvider({
    required this.book,
  }) : super(
          (ref) => ebookPages(
            ref,
            book: book,
          ),
          from: ebookPagesProvider,
          name: r'ebookPagesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $ebookPagesHash,
        );

  final Ebook book;

  @override
  bool operator ==(Object other) {
    return other is EbookPagesProvider && other.book == book;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, book.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef EbookPagesRef = FutureProviderRef<int>;

/// See also [ebookPages].
final ebookPagesProvider = EbookPagesFamily();

class EbookPagesFamily extends Family<AsyncValue<int>> {
  EbookPagesFamily();

  EbookPagesProvider call({
    required Ebook book,
  }) {
    return EbookPagesProvider(
      book: book,
    );
  }

  @override
  FutureProvider<int> getProviderOverride(
    covariant EbookPagesProvider provider,
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
  String? get name => r'ebookPagesProvider';
}
