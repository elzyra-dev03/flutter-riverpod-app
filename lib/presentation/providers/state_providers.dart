import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../config/helpers/random_generator.dart';
part 'state_providers.g.dart';

@riverpod
class Counter extends _$Counter {
  @override
  int build() {
    return 5;
  }

  void increaseByOne() {
    state++;
  }
}

@riverpod
class IsDarkMode extends _$IsDarkMode {
  @override
  bool build() => false;

  void toggleDarkMode() {
    state = !state;
  }
}

@riverpod
class UserName extends _$UserName {
  @override
  build() => "Carlos Sierra";

  void getRandomName() {
    state = RandomGenerator.getRandomName();
  }
}
