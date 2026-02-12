class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    String delimiter = ",|\n";
    String numbersToProcess = numbers;

    // Check if a custom delimiter is defined
    if (numbers.startsWith("//")) {
      var parts = numbers.split("\n");
      // Extract delimiter from "//[delimiter]\n"
      // we use RegExp.escape so characters like '*' or '.' don't break the regex
      delimiter = RegExp.escape(parts[0].substring(2));
      numbersToProcess = parts[1];
    }

    final List<int> nums = numbersToProcess
        .split(RegExp(delimiter))
        .where((s) => s.isNotEmpty) // Filters out empty strings from trailing delimiters
        .map((s) => int.parse(s))
        .toList();

    return nums.fold(0, (sum, element) => sum + element);
  }
}