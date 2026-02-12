import 'package:string_calculator_tdd_incubyte/string_calculator.dart';

void main() {
  final calculator = StringCalculator();

  print('--- String Calculator Step 4 (Custom Delimiters) ---');

  final customResult = calculator.add("//;\n1;2");
  print('Input: "//;\\n1;2"');
  print('Output: $customResult');

  print('Input: "1,2\\n3" -> Output: ${calculator.add("1,2\n3")}');
}