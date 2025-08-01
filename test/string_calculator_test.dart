// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:string_calculator_tdd/string_calculator.dart';
void main() {
  // Step 1: Handle empty string
  /* test('Empty string should return 0', () {
    expect(add(""), equals(0));
  });*/

  // Step 2: Handle one number
  /* test('returns single number as int', () {
    expect(add('1'), equals(1));
  });*/

  // Step 3: Handle two comma-separated numbers
  // test('returns sum of two comma-separated numbers', () {
  //   expect(add('5,5'), equals(10));
  // });

  // Step 4: Handle any number of comma-separated values
  /* test('returns sum of multiple comma-separated numbers', () {
    expect(add('2,4,6,8,20'), equals(40));
  });*/

  // Step 5: Handle newline (\n) as delimiter
  /*test('handles new line between numbers', () {
    expect(add('10\n20,30'), equals(60));
  });*/

  // Step 6: Support custom delimiters
 /* test('supports custom delimiter ;', () {
    expect(add('//;\n50;50'), equals(100));
  });*/

  // Step 7: Handle negative numbers with exception
  // test('throws exception for negative numbers', () {
  //   expect(() => add('-1,5,13,-23,7,-14'), throwsA(predicate((e) =>
  //   e is Exception && e.toString().contains('negative numbers not allowed -1,-23,-14')
  //   )));
  // });

  // Step 8: Ignore numbers > 1000
  test('ignore numbers greater than 1000', () {
    expect(add('2,1001'), equals(2));
    expect(add('1000,1'), equals(1001)); // 1000 is allowed
  });

}
