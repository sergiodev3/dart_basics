/// Ejercicio 9: Conversor de temperatura
///
/// Programa que convierte entre Celsius y Fahrenheit.
/// Demuestra el uso de funciones y condicionales.

void main() {
  print('=== CONVERSOR DE TEMPERATURA ===\n');

  // Ejemplos de conversión
  convertirTemperatura(32, 'Celsius');
  convertirTemperatura(100, 'Celsius');
  convertirTemperatura(212, 'Fahrenheit');
  convertirTemperatura(0, 'Fahrenheit');
  convertirTemperatura(25, 'Kelvin'); // Escala no válida
}

/// Convierte temperatura entre diferentes escalas
///
/// [temperatura]: Valor numérico de la temperatura
/// [escala]: Escala de origen ('Celsius' o 'Fahrenheit')
void convertirTemperatura(double temperatura, String escala) {
  double resultado;

  if (escala == 'Celsius') {
    // Fórmula: (C × 9/5) + 32 = F
    resultado = (temperatura * 9 / 5) + 32;
    print('$temperatura°C = ${resultado.toStringAsFixed(2)}°F');
  } else if (escala == 'Fahrenheit') {
    // Fórmula: (F - 32) × 5/9 = C
    resultado = (temperatura - 32) * 5 / 9;
    print('$temperatura°F = ${resultado.toStringAsFixed(2)}°C');
  } else {
    print('❌ Error: Escala "$escala" no válida.');
    print('   Escalas disponibles: "Celsius" o "Fahrenheit"');
  }
}
