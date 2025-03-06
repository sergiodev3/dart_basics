void main() {
  convertirTemperatura(32, 'Celsius');
}

void convertirTemperatura(double temperatura, String escala) {
  double resultado;

  if (escala == 'Celsius') {
    resultado = (temperatura * 9 / 5) + 32;
    print(
        "$temperatura grados Celsius son equivalentes a $resultado grados Fahrenheit");
  } else if (escala == 'Fahrenheit') {
    resultado = (temperatura - 32) * 5 / 9;
    print(
        "$temperatura grados Fahrenheit son equivalentes a $resultado grados Celsius");
  } else {
    print("Escala de temperatura no válida.");
  }
}


