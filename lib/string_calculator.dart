
// Step 1: Handle empty string
/*int add(String numbers) {
  if (numbers.isEmpty) return 0;
  return 0;
}*/

// Step 2: Handle one number
int add(String numbers) {
  if (numbers.isEmpty) return 0;
  return int.parse(numbers);
}
