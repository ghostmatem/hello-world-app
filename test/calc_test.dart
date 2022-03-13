import 'package:flutter_test/flutter_test.dart';
import 'package:hello_world_app/calc.dart';

void main() {
  runSumTests();
}

void runSumTests() {
  final calc = Calc();
  const a = 3, b = 7;

  baseSumTest('Sum two number', a + b, () => calc.sum(a, b));
  baseSumTest('The sum of two positive numbers must be positive', true, () => calc.sum(a, b) >= 0);
  baseSumTest('The sum of two negative numbers must be negative', true, () => calc.sum(-a, -b) < 0);
}

void baseSumTest<T>(String description, T expected, T Function() callback) {
  test(description, () {
    final actual = callback();
    expect(actual, expected);
  });
}
