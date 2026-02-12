import 'package:string_calculator_tdd_incubyte/string_calculator.dart'; // We will create this
import 'package:test/test.dart';

void main() {
  group('StringCalculator add method', () {
    test('given an empty string, '
        'when the add method is called, '
        'then returns 0', () {
      final calculator = StringCalculator();
      expect(calculator.add(""), 0);
    });

    test('given a string with two numbers, '
        'when the add method is called, '
        'then returns their sum', () {
      final calculator = StringCalculator();
      expect(calculator.add("1,5"), 6);
    });

    test('given numbers separated by new lines, '
        'when add is called, '
        'then returns the sum', () {
      final calculator = StringCalculator();
      expect(calculator.add("1\n2,3"), 6);
    });

    test('given a custom delimiter header, '
        'when the add method is called, '
        'then returns the sum using that custom delimiter', () {
      final calculator = StringCalculator();
      final result = calculator.add("//;\n1;2");
      expect(result, 3);
    });

    test(
      'given a string containing negative numbers, '
      'when the add method is called, '
      'then throws an exception with all negative numbers in the message',
      () {
        final calculator = StringCalculator();

        expect(
          () => calculator.add("1,-2,3,-4"),
          throwsA(
            isA<Exception>().having(
              (e) => e.toString(),
              'message',
              contains('negatives not allowed: -2, -4'),
            ),
          ),
        );
      },
    );
  });
}
