
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
int add(String numbers) {
  if (numbers.isEmpty) return 0;
  return numbers.split(',').map(int.parse).reduce((a, b) => a + b);
}
