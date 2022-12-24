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

String $ebooksHash() => r'0fffccc65a2e68862fb394054c46ca6689812e95';

/// See also [ebooks].
final ebooksProvider = FutureProvider<List<Ebook>>(
  ebooks,
  name: r'ebooksProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : $ebooksHash,
);
typedef EbooksRef = FutureProviderRef<List<Ebook>>;
String $selectedYearGroupHash() => r'2769ec77d9aa462b4757914f74e3a8bf70df448b';

/// See also [selectedYearGroup].
final selectedYearGroupProvider = Provider<YearGroup>(
  selectedYearGroup,
  name: r'selectedYearGroupProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $selectedYearGroupHash,
);
typedef SelectedYearGroupRef = ProviderRef<YearGroup>;
