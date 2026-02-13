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
      // Join all remaining parts as numbers to process
      numbersToProcess = parts.sublist(1).join("\n");
    }

    final List<int> nums = numbersToProcess
        .split(RegExp("$delimiter|\n"))
        .where((s) => s.trim().isNotEmpty)
        .map((s) => int.parse(s.trim()))
        .toList();

    // For Negative Number
    final List<int> negatives = nums.where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw Exception("negatives not allowed: ${negatives.join(', ')}");
    }

    return nums.fold(0, (sum, element) => sum + element);
  }
}