class Calculadora {
  int dividir(int a, int b) {
    if (b == 0) {
      throw ArgumentError("No se puede dividir por cero.");
    }
    return a ~/ b;
  }
}

void main() {
  var calc = Calculadora();

  try {
    print(calc.dividir(10, 0)); // Lanza un ArgumentError
  } catch (e) {
    print("Error capturado: $e");
  }
}
