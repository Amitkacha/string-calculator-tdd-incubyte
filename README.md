# String Calculator TDD (Incubyte)

A simple String Calculator implementation in Dart, 
built using Test-Driven Development (TDD) principles.
Similar we can implement in flutter.

## Features
- Sum of numbers provided in a string.
- Support for an unknown amount of numbers.
- Support for comma (`,`) and newline (`\n`) as default delimiters.
- Support for custom delimiters defined in the format `//[delimiter]\n[numbers]`.
- Exception handling for negative numbers.

## Getting Started

1. Clone the repository:
   git clone https://github.com/Amitkacha/string-calculator-tdd-incubyte.git
   cd string-calculator-tdd-incubyte

2. Fetch dependencies:
   dart pub get

## Running Tests

To run the automated tests, use the following command:
dart test

You can use the `StringCalculator` class in your Dart project:
import 'package:string_calculator_tdd_incubyte/string_calculator.dart';

void main() {
  final calculator = StringCalculator();
  
  print(calculator.add("")); // 0
  print(calculator.add("1,2,3")); // 6
  print(calculator.add("1\n2,3")); // 6
  print(calculator.add("//;\n1;2")); // 3
}

