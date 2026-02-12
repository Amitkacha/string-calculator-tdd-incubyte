import 'package:string_calculator_tdd_incubyte/string_calculator.dart';

void main() {
  final calculator = StringCalculator();

  print('--- String Calculator Step 4 (Custom Delimiters) ---');

  final customResult = calculator.add("//;\n1;2");
  print('Input: "//;\\n1;2"');
  print('Output: $customResult');

  print('Input: "1,2\\n3" -> Output: ${calculator.add("1,2\n3")}');

  try {
    print('Testing Negatives: "1,-2,3,-4"');
    calculator.add("1,-2,3,-4");
  } catch (e) {
    // This will print the exception message
    print('Caught expected error: $e');
  }
}