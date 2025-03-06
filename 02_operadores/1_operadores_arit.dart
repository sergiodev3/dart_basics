void main() {
  assert(2 + 3 == 6);
  assert(2 - 3 == -1);
  assert(2 * 3 == 6);
  assert(5 / 2 == 2.5); // Result is a double
  assert(5 ~/ 2 == 2); // Result is an int
  assert(5 % 2 == 1); // Remainder

  var num1 = 5;
  var num2 = 3;
  var result = num1 + num2;
  print(result);
}
