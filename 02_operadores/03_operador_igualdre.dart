void main() {
  assert(2 == 2);
  assert(2 != 3);
  assert(3 > 2);
  assert(2 < 3);
  assert(3 >= 3);
  assert(2 <= 3);

  int a = 10;
  int b = 20;

  print(a == b); // false
  print(a != b); // true
  print(a < b); // true
  print(a > b); // false
  print(a <= 10); // true
  print(b >= 15); // true
}
