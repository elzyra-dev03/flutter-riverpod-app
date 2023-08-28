// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$counterHash() => r'b43f7c18c5389c537100fd61fa83ba6d1aa0df33';

/// See also [Counter].
@ProviderFor(Counter)
final counterProvider = NotifierProvider<Counter, int>.internal(
  Counter.new,
  name: r'counterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$counterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Counter = Notifier<int>;
String _$isDarkModeHash() => r'bc24cb217574092ff7d8e57ea69090f74f3ed5d6';

/// See also [IsDarkMode].
@ProviderFor(IsDarkMode)
final isDarkModeProvider =
    AutoDisposeNotifierProvider<IsDarkMode, bool>.internal(
  IsDarkMode.new,
  name: r'isDarkModeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$isDarkModeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$IsDarkMode = AutoDisposeNotifier<bool>;
String _$userNameHash() => r'8d3fe508e1b6fe4ed360c86a1074b0d5265c9880';

/// See also [UserName].
@ProviderFor(UserName)
final userNameProvider = NotifierProvider<UserName, dynamic>.internal(
  UserName.new,
  name: r'userNameProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userNameHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UserName = Notifier<dynamic>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
