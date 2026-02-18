/// Ejemplo 3: Bucle do-while
///
/// El bucle 'do-while' ejecuta el bloque de código AL MENOS UNA VEZ,
/// y luego continúa mientras la condición sea verdadera.
/// Se evalúa la condición DESPUÉS de ejecutar el bloque.

void main() {
  print('=== BUCLE DO-WHILE ===\n');

  // Ejemplo básico
  print('--- Ejecutar al menos una vez ---');
  var contador = 1;

  do {
    print('Iteración: $contador');
    contador++;
  } while (contador <= 5);

  // Diferencia con while: se ejecuta al menos una vez
  print('\n--- Diferencia con while ---');
  var x = 10;

  print('Con do-while (x = $x):');
  do {
    print('  Se ejecuta aunque x >= 5');
    x++;
  } while (x < 5); // Condición es falsa, pero se ejecuta 1 vez

  print('\nCon while (x = 10):');
  x = 10;
  while (x < 5) {
    print('  Esto NO se ejecuta');
    x++;
  }
  print('  El bucle while no se ejecutó');

  // Ejemplo práctico: menú
  print('\n--- Simulación de menú ---');
  var opcion = 0;
  var iteracion = 0;

  do {
    iteracion++;
    print('\n--- Menú Principal (Iteración $iteracion) ---');
    print('1. Ver perfil');
    print('2. Configuración');
    print('3. Salir');
    print('');

    // Simular selección de usuario
    if (iteracion == 1) {
      opcion = 1;
      print('Usuario seleccionó: $opcion - Ver perfil');
    } else if (iteracion == 2) {
      opcion = 2;
      print('Usuario seleccionó: $opcion - Configuración');
    } else {
      opcion = 3;
      print('Usuario seleccionó: $opcion - Salir');
    }
  } while (opcion != 3);

  print('\n¡Hasta luego!');
}
