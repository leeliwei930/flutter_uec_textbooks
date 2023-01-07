// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_storage.dart';

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

String $applicationDocumentDirectoryHash() =>
    r'c88d95b4b33cec851a8758ff3cd4666a63a21736';

/// See also [applicationDocumentDirectory].
final applicationDocumentDirectoryProvider =
    AutoDisposeFutureProvider<Directory>(
  applicationDocumentDirectory,
  name: r'applicationDocumentDirectoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $applicationDocumentDirectoryHash,
);
typedef ApplicationDocumentDirectoryRef
    = AutoDisposeFutureProviderRef<Directory>;
String $temporaryDirectoryHash() => r'2bc62538edb7f8c0374b6f1948dadcc0450c8322';

/// See also [temporaryDirectory].
final temporaryDirectoryProvider = AutoDisposeFutureProvider<Directory>(
  temporaryDirectory,
  name: r'temporaryDirectoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $temporaryDirectoryHash,
);
typedef TemporaryDirectoryRef = AutoDisposeFutureProviderRef<Directory>;
