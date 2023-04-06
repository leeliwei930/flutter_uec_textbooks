// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'networking_provider.dart';

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

String $dioHash() => r'c0307602149453fb62745d14f7c9a2b5cdc2b860';

/// See also [dio].
final dioProvider = AutoDisposeProvider<Dio>(
  dio,
  name: r'dioProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : $dioHash,
);
typedef DioRef = AutoDisposeProviderRef<Dio>;
String $ebooksClientHash() => r'55ef2433781cd2a777b29934b869d5c858797a54';

/// See also [ebooksClient].
final ebooksClientProvider = AutoDisposeProvider<BooksApiClient>(
  ebooksClient,
  name: r'ebooksClientProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : $ebooksClientHash,
);
typedef EbooksClientRef = AutoDisposeProviderRef<BooksApiClient>;
