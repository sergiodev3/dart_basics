/// Ejemplo 3: Tabla de multiplicar interactiva
///
/// Solicita un número al usuario y muestra su tabla de multiplicar.
/// Incluye validación de entrada y formato mejorado.

import 'dart:io';

void main() {
  generarTablaMultiplicar();
}

/// Genera y muestra la tabla de multiplicar de un número
void generarTablaMultiplicar() {
  print('┌───────────────────────────────────┐');
  print('│  GENERADOR DE TABLAS DE MULTIPLICAR  │');
  print('└───────────────────────────────────┘\n');

  // Solicitar número
  stdout.write('🔢 Ingresa un número (1-20): ');
  var entrada = stdin.readLineSync();

  // Validar entrada
  if (entrada == null || entrada.trim().isEmpty) {
    print('\n❌ Error: No ingresaste ningún número.');
    return;
  }

  try {
    var numero = int.parse(entrada.trim());

    // Validar rango
    if (numero < 1 || numero > 20) {
      print('\n❌ Error: El número debe estar entre 1 y 20.');
      return;
    }

    // Mostrar tabla
    print('');
    print('═' * 35);
    print('  TABLA DE MULTIPLICAR DEL $numero');
    print('═' * 35);
    print('');

    for (int i = 1; i <= 10; i++) {
      var resultado = numero * i;
      var numeroStr = numero.toString().padLeft(2);
      var iStr = i.toString().padLeft(2);
      var resultadoStr = resultado.toString().padLeft(3);

      print('  $numeroStr × $iStr = $resultadoStr');
    }

    print('');
    print('═' * 35);
    print('  ✓ Tabla completada');
    print('═' * 35);
  } catch (e) {
    print('\n❌ Error: "$entrada" no es un número válido.');
    print('   Por favor, ingresa solo números enteros.');
  }
}
