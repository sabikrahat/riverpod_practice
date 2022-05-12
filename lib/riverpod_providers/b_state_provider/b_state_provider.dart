import 'package:flutter_riverpod/flutter_riverpod.dart';

// final counterStatePd = StateProvider.autoDispose<int>((ref) => 0);

final counterObjectStatePd =
    StateProvider<TestObject>((ref) => TestObject(0, 0));

class TestObject {
  final int firstCounter;
  final int secondCounter;

  TestObject(
    this.firstCounter,
    this.secondCounter,
  );

  TestObject copyWith({
    int? firstCounter,
    int? secondCounter,
  }) {
    return TestObject(
      firstCounter ?? this.firstCounter,
      secondCounter ?? this.secondCounter,
    );
  }
}
