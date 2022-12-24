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

String $ebooksHash() => r'89e01a7c0dff639467481459bde8e33d5eb9c2a0';

/// See also [ebooks].
final ebooksProvider = FutureProvider<List<Ebook>>(
  ebooks,
  name: r'ebooksProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : $ebooksHash,
);
typedef EbooksRef = FutureProviderRef<List<Ebook>>;
String $ebookPagesHash() => r'22bac36bf3a68758b3994e969898aadb4cbb1bce';

/// See also [ebookPages].
class EbookPagesProvider extends FutureProvider<int> {
  EbookPagesProvider({
    required this.downloadUrl,
  }) : super(
          (ref) => ebookPages(
            ref,
            downloadUrl: downloadUrl,
          ),
          from: ebookPagesProvider,
          name: r'ebookPagesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $ebookPagesHash,
        );

  final String downloadUrl;

  @override
  bool operator ==(Object other) {
    return other is EbookPagesProvider && other.downloadUrl == downloadUrl;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, downloadUrl.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef EbookPagesRef = FutureProviderRef<int>;

/// See also [ebookPages].
final ebookPagesProvider = EbookPagesFamily();

class EbookPagesFamily extends Family<AsyncValue<int>> {
  EbookPagesFamily();

  EbookPagesProvider call({
    required String downloadUrl,
  }) {
    return EbookPagesProvider(
      downloadUrl: downloadUrl,
    );
  }

  @override
  FutureProvider<int> getProviderOverride(
    covariant EbookPagesProvider provider,
  ) {
    return call(
      downloadUrl: provider.downloadUrl,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'ebookPagesProvider';
}
