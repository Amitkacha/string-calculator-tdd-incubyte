import 'package:string_calculator_tdd_incubyte/string_calculator.dart';

void main() {
  final calculator = StringCalculator();
  print('--- String Calculator Step 1 ---');
  print('Input: "1\\n2,3" -> Output: ${calculator.add("1\n2,3")}');
}
