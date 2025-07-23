// Step 1: Handle empty string
/*int add(String numbers) {
  if (numbers.isEmpty) return 0;
  return 0;
}*/

// Step 2: Handle one number
/*int add(String numbers) {
  if (numbers.isEmpty) return 0;
  return int.parse(numbers);
}*/

// Step 3: Handle two comma-separated numbers
/*int add(String numbers) {
  if (numbers.isEmpty) return 0;
  if (numbers.contains(',')) {
    return numbers.split(',').map(int.parse).reduce((a, b) => a + b);
  }
  return int.parse(numbers);
}*/

// Step 4: Handle any number of comma-separated values
/*int add(String numbers) {
  if (numbers.isEmpty) return 0;
  return numbers.split(',').map(int.parse).reduce((a, b) => a + b);
}*/

// Step 5: Handle newline (\n) as delimiter
/*int add(String numbers) {
  if (numbers.isEmpty) return 0;
  final cleaned = numbers.replaceAll('\n', ',');
  return cleaned.split(',').map(int.parse).reduce((a, b) => a + b);
}*/

// Step 6: Support custom delimiters
/*int add(String numbers) {
  if (numbers.isEmpty) return 0;

  String delimiter = ',';
  if (numbers.startsWith('//')) {
    final delimiterLine = numbers.split('\n')[0];
    delimiter = delimiterLine[2];
    numbers = numbers.substring(delimiterLine.length + 1);
  }

  final cleaned = numbers.replaceAll('\n', delimiter);
  return cleaned.split(delimiter).map(int.parse).reduce((a, b) => a + b);
}*/

// Step 7: Handle negative numbers with exception

int add(String numbers) {
  if (numbers.isEmpty) return 0;

  String delimiter = ',';
  if (numbers.startsWith('//')) {
    final delimiterLine = numbers.split('\n')[0];
    delimiter = delimiterLine[2];
    numbers = numbers.substring(delimiterLine.length + 1);
  }

  final cleaned = numbers.replaceAll('\n', delimiter);
  final numberList = cleaned.split(delimiter).map(int.parse).toList();

  final negatives = numberList.where((n) => n < 0).toList();
  if (negatives.isNotEmpty) {
    throw Exception('negative numbers not allowed ${negatives.join(',')}');
  }

  return numberList.reduce((a, b) => a + b);
}
