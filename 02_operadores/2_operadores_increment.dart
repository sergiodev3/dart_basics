void main() {
  //++var (prefijo): Incrementa la variable
  // antes de que se evalúe cualquier otra expresión.
  int var1 = 5;
  print(++var1); // Imprimirá 6
  print(var1); // Imprimirá 6

  //var++ (postfijo): Incrementa la variable
  // después de que se evalúe la expresión actual.
  int var2 = 5;
  print(var2++); // Imprimirá 5
  print(var2); // Imprimirá 6

  //--var (prefijo): Decrementa la variable
  //antes de que se evalúe cualquier otra expresión.
  int var3 = 5;
  print(--var3); // Imprimirá 4
  print(var3); // Imprimirá 4

  //var-- (postfijo): Decrementa la variable
  //después de que se evalúe la expresión actual.
  int var4 = 5;
  print(var4--); // Imprimirá 5
  print(var4); // Imprimirá 4
}
