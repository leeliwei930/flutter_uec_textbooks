// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_library_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$savedLibraryBoxHash() => r'd3e212940cdfd77162f68c36283d3983d8c8f701';

/// See also [savedLibraryBox].
@ProviderFor(savedLibraryBox)
final savedLibraryBoxProvider = AutoDisposeFutureProvider<Box<Book>>.internal(
  savedLibraryBox,
  name: r'savedLibraryBoxProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$savedLibraryBoxHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SavedLibraryBoxRef = AutoDisposeFutureProviderRef<Box<Book>>;
String _$savedLibraryRepositoryHash() =>
    r'bb87689b24549d01681f6faa8ffdc520bfd54c09';

/// See also [savedLibraryRepository].
@ProviderFor(savedLibraryRepository)
final savedLibraryRepositoryProvider =
    AutoDisposeProvider<OfflineLibraryRepository>.internal(
  savedLibraryRepository,
  name: r'savedLibraryRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$savedLibraryRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SavedLibraryRepositoryRef
    = AutoDisposeProviderRef<OfflineLibraryRepository>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
