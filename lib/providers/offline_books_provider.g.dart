// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offline_books_provider.dart';

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

String $offlineBookStateNotifierHash() =>
    r'99fda5ec0aa3f78234b512b3d96e0e3fbea5dc07';

/// See also [offlineBookStateNotifier].
class OfflineBookStateNotifierProvider
    extends AutoDisposeProvider<OfflineBooksStateNotifier> {
  OfflineBookStateNotifierProvider({
    required this.book,
  }) : super(
          (ref) => offlineBookStateNotifier(
            ref,
            book: book,
          ),
          from: offlineBookStateNotifierProvider,
          name: r'offlineBookStateNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $offlineBookStateNotifierHash,
        );

  final Book book;

  @override
  bool operator ==(Object other) {
    return other is OfflineBookStateNotifierProvider && other.book == book;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, book.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef OfflineBookStateNotifierRef
    = AutoDisposeProviderRef<OfflineBooksStateNotifier>;

/// See also [offlineBookStateNotifier].
final offlineBookStateNotifierProvider = OfflineBookStateNotifierFamily();

class OfflineBookStateNotifierFamily extends Family<OfflineBooksStateNotifier> {
  OfflineBookStateNotifierFamily();

  OfflineBookStateNotifierProvider call({
    required Book book,
  }) {
    return OfflineBookStateNotifierProvider(
      book: book,
    );
  }

  @override
  AutoDisposeProvider<OfflineBooksStateNotifier> getProviderOverride(
    covariant OfflineBookStateNotifierProvider provider,
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
  String? get name => r'offlineBookStateNotifierProvider';
}
