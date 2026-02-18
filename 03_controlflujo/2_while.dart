/// Ejemplo 2: Bucle while
///
/// El bucle 'while' continúa ejecutándose mientras la condición sea verdadera.
/// Se evalúa la condición ANTES de ejecutar el bloque de código.

void main() {
  print('=== BUCLE WHILE ===\n');

  // Ejemplo básico: contador
  print('--- Contador básico ---');
  int contador = 1;

  while (contador <= 5) {
    print('Conteo: $contador');
    contador++;
  }

  // Ejemplo: suma acumulativa
  print('\n--- Suma acumulativa ---');
  int numero = 1;
  int sumaTotal = 0;

  while (numero <= 10) {
    sumaTotal += numero;
    numero++;
  }
  print('Suma de 1 a 10: $sumaTotal');

  // Ejemplo: validación de entrada
  print('\n--- Procesamiento de datos ---');
  var intentos = 0;
  var exito = false;

  while (intentos < 3 && !exito) {
    intentos++;
    print('Intento #$intentos...');

    // Simulación: el tercer intento es exitoso
    if (intentos == 3) {
      exito = true;
      print('✓ ¡Operación exitosa!');
    }
  }

  if (!exito) {
    print('❌ Máximo de intentos alcanzado');
  }

  // Ejemplo: tabla de multiplicar
  print('\n--- Tabla de multiplicar del 5 ---');
  int multiplicador = 1;
  const int base = 5;

  while (multiplicador <= 10) {
    print('$base x $multiplicador = ${base * multiplicador}');
    multiplicador++;
  }
}
