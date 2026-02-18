/// Ejemplo 4: Calculadora básica interactiva
///
/// Calculadora que realiza operaciones básicas: suma, resta, multiplicación y división.
/// Incluye validación de entrada y manejo de errores.

import 'dart:io';

void main() {
  ejecutarCalculadora();
}

/// Ejecuta la calculadora interactiva
void ejecutarCalculadora() {
  print('┌────────────────────────────────┐');
  print('│    CALCULADORA BÁSICA         │');
  print('└────────────────────────────────┘\n');

  try {
    // Solicitar primer número
    stdout.write('🔢 Ingresa el primer número: ');
    var entrada1 = stdin.readLineSync();
    if (entrada1 == null || entrada1.trim().isEmpty) {
      throw FormatException('Entrada vacía');
    }
    double num1 = double.parse(entrada1.trim());

    // Solicitar operador
    print('\n🛠️  Operadores disponibles:');
    print('   + (suma)');
    print('   - (resta)');
    print('   * (multiplicación)');
    print('   / (división)');
    stdout.write('\nIngresa el operador: ');
    var operador = stdin.readLineSync()?.trim();

    if (operador == null || operador.isEmpty) {
      throw FormatException('Operador no válido');
    }

    // Solicitar segundo número
    stdout.write('\n🔢 Ingresa el segundo número: ');
    var entrada2 = stdin.readLineSync();
    if (entrada2 == null || entrada2.trim().isEmpty) {
      throw FormatException('Entrada vacía');
    }
    double num2 = double.parse(entrada2.trim());

    // Realizar operación
    double resultado;
    String simbolo;

    switch (operador) {
      case '+':
        resultado = num1 + num2;
        simbolo = '+';
      case '-':
        resultado = num1 - num2;
        simbolo = '-';
      case '*':
        resultado = num1 * num2;
        simbolo = '×';
      case '/':
        if (num2 == 0) {
          print('\n❌ Error: No se puede dividir por cero.');
          return;
        }
        resultado = num1 / num2;
        simbolo = '÷';
      default:
        print('\n❌ Error: Operador "$operador" no válido.');
        print('   Usa: +, -, *, /');
        return;
    }

    // Mostrar resultado
    print('');
    print('═' * 40);
    print('  RESULTADO');
    print('═' * 40);
    print('');
    print('  $num1 $simbolo $num2 = ${resultado.toStringAsFixed(2)}');
    print('');
    print('═' * 40);
    print('  ✓ Cálculo completado');
    print('═' * 40);
  } on FormatException {
    print('\n❌ Error: Entrada inválida.');
    print('   Por favor, ingresa números válidos.');
  } catch (e) {
    print('\n❌ Error inesperado: $e');
  }
}
