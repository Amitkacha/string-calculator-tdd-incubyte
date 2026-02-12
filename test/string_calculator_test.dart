import 'package:string_calculator_tdd_incubyte/string_calculator.dart'; // We will create this
import 'package:test/test.dart';

void main() {
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
}
