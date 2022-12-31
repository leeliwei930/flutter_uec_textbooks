// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_library_provider.dart';

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

String $savedLibraryBoxHash() => r'd3e212940cdfd77162f68c36283d3983d8c8f701';

/// See also [savedLibraryBox].
final savedLibraryBoxProvider = AutoDisposeFutureProvider<Box<Book>>(
  savedLibraryBox,
  name: r'savedLibraryBoxProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $savedLibraryBoxHash,
);
typedef SavedLibraryBoxRef = AutoDisposeFutureProviderRef<Box<Book>>;
String $savedLibraryRepositoryHash() =>
    r'a31f48d5062dd5b6b86df93652d832ca199c0523';

/// See also [savedLibraryRepository].
final savedLibraryRepositoryProvider =
    AutoDisposeProvider<SavedLibraryRepository>(
  savedLibraryRepository,
  name: r'savedLibraryRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $savedLibraryRepositoryHash,
);
typedef SavedLibraryRepositoryRef
    = AutoDisposeProviderRef<SavedLibraryRepository>;
String $savedBookOfflineAvailabilityHash() =>
    r'eb8eb907b3b229419e6014cb5a586da687d4e315';

/// See also [savedBookOfflineAvailability].
class SavedBookOfflineAvailabilityProvider
    extends AutoDisposeFutureProvider<bool> {
  SavedBookOfflineAvailabilityProvider({
    required this.book,
  }) : super(
          (ref) => savedBookOfflineAvailability(
            ref,
            book: book,
          ),
          from: savedBookOfflineAvailabilityProvider,
          name: r'savedBookOfflineAvailabilityProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $savedBookOfflineAvailabilityHash,
        );

  final Book book;

  @override
  bool operator ==(Object other) {
    return other is SavedBookOfflineAvailabilityProvider && other.book == book;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, book.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef SavedBookOfflineAvailabilityRef = AutoDisposeFutureProviderRef<bool>;

/// See also [savedBookOfflineAvailability].
final savedBookOfflineAvailabilityProvider =
    SavedBookOfflineAvailabilityFamily();

class SavedBookOfflineAvailabilityFamily extends Family<AsyncValue<bool>> {
  SavedBookOfflineAvailabilityFamily();

  SavedBookOfflineAvailabilityProvider call({
    required Book book,
  }) {
    return SavedBookOfflineAvailabilityProvider(
      book: book,
    );
  }

  @override
  AutoDisposeFutureProvider<bool> getProviderOverride(
    covariant SavedBookOfflineAvailabilityProvider provider,
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
  String? get name => r'savedBookOfflineAvailabilityProvider';
}
