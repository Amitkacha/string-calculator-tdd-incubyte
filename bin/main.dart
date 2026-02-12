import 'package:string_calculator_tdd_incubyte/string_calculator.dart';

void main() {
  final calculator = StringCalculator();
  print('--- String Calculator Step 1 ---');
  print('Input: "1,5" -> Output: ${calculator.add("1,5")}');
}
