void main() {
  myFunction();
  Suma(5.8, 5.7);
  var pruebaFconretorno = RestaConRetorno(8, 3);
  print(pruebaFconretorno);
  numPar(5);
  Tablam(7);
}

void myFunction() {
  print("Saludo");
}

void Suma(double num1, double num2) {
  var result = num1 + num2;
  print("The sum is:${result}");
}

double RestaConRetorno(double num1, double num2) {
  var result = num1 - num2;
  return result;
}

void numPar(int num) {
  if (num % 2 == 0) {
    print("Es numero par");
  } else {
    print("Es numero impar");
  }
}

void Tablam(int num) {
  print("tabla de multiplicar del numero $num :");
  for (int i = 1; i <= 10; i++) {
    var resultado = num * i;
    print("$num x $i = $resultado");
  }
}
