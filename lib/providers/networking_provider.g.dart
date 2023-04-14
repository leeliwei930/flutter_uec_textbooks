// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'networking_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dioHash() => r'c0307602149453fb62745d14f7c9a2b5cdc2b860';

/// See also [dio].
@ProviderFor(dio)
final dioProvider = AutoDisposeProvider<Dio>.internal(
  dio,
  name: r'dioProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dioHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DioRef = AutoDisposeProviderRef<Dio>;
String _$ebooksClientHash() => r'55ef2433781cd2a777b29934b869d5c858797a54';

/// See also [ebooksClient].
@ProviderFor(ebooksClient)
final ebooksClientProvider = AutoDisposeProvider<BooksApiClient>.internal(
  ebooksClient,
  name: r'ebooksClientProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$ebooksClientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef EbooksClientRef = AutoDisposeProviderRef<BooksApiClient>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
