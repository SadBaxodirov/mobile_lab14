import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_lab14/calculator.dart';

void main() {
  group('Calculator.add() tests', () {
    test('should return sum of positive numbers', () {
      // arrange
      final calculator = Calculator();
      const a = 5;
      const b = 7;

      // acct
      final result = calculator.add(a, b);

      // assert
      expect(result, 12);
    });

    test('should return sum of negative numbers', () {
      // arrange
      final calculator = Calculator();
      const a = -10;
      const b = -3;

      // act
      final result = calculator.add(a, b);

      // assert
      expect(result, -13);
    });

    test('should return sum when one value is zero', () {
      // arrange
      final calculator = Calculator();
      const a = 0;
      const b = 9;

      // act
      final result = calculator.add(a, b);

      // assert
      expect(result, 9);
    });

    test('should return sum for positive&negative inputs', () {
      // arrange
      final calculator = Calculator();
      const a = 10;
      const b = -4;

      // act
      final result = calculator.add(a, b);

      // assert
      expect(result, 6);
    });

    test('should return zero when both inputs are zero', () {
      // arrange
      final calculator = Calculator();
      const a = 0;
      const b = 0;

      // act
      final result = calculator.add(a, b);

      // assert
      expect(result, 0);
    });
  });
}
