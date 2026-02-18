/// Ejemplo 2: Validación de edad
///
/// Solicita la edad del usuario y valida si es mayor de edad.
/// Incluye manejo de errores para entradas inválidas.

import 'dart:io';

void main() {
  verificarMayoriaEdad();
}

/// Solicita la edad y verifica si el usuario es mayor de edad
void verificarMayoriaEdad() {
  print('┌────────────────────────────────────┐');
  print('│  VERIFICACIÓN DE MAYORÍA DE EDAD  │');
  print('└────────────────────────────────────┘\n');

  const edadMinima = 18;

  // Solicitar edad
  stdout.write('📅 Ingresa tu edad: ');
  var entrada = stdin.readLineSync();

  // Validar entrada
  if (entrada == null || entrada.trim().isEmpty) {
    print('\n❌ Error: No ingresaste ninguna edad.');
    return;
  }

  // Intentar convertir a número
  try {
    var edad = int.parse(entrada.trim());

    // Validar rango razonable
    if (edad < 0 || edad > 120) {
      print('\n❌ Error: La edad debe estar entre 0 y 120 años.');
      return;
    }

    // Mostrar resultado
    print('');
    print('─' * 40);
    print('RESULTADO DE LA VERIFICACIÓN');
    print('─' * 40);
    print('Edad ingresada: $edad años');
    print('');

    if (edad >= edadMinima) {
      var aniosExtra = edad - edadMinima;
      print('✅ Eres MAYOR de edad');
      print('   Tienes $aniosExtra año(s) por encima de la edad mínima');
    } else {
      var aniosFaltantes = edadMinima - edad;
      print('❌ Eres MENOR de edad');
      print('   Te faltan $aniosFaltantes año(s) para ser mayor de edad');
    }

    print('─' * 40);
  } catch (e) {
    print('\n❌ Error: "$entrada" no es un número válido.');
    print('   Por favor, ingresa solo números.');
  }
}
