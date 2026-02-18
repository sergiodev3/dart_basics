/// Ejemplo 3.1: Funciones flecha (Arrow functions)
///
/// Las funciones flecha (=>) son una sintaxis corta para funciones simples.
/// Se usan cuando la función tiene una sola expresión.
/// Sintaxis: tipo nombre(parámetros) => expresión;

void main() {
  print('=== FUNCIONES FLECHA ===\n');

  // 1. Verificar si es número par
  print('--- Números pares ---');
  print('¿8 es par? ${esPar(8)}');
  print('¿7 es par? ${esPar(7)}');
  print('¿0 es par? ${esPar(0)}');

  // 2. Comparar dos números
  print('\n--- Comparaciones ---');
  print('¿10 es mayor que 5? ${esMayor(10, 5)}');
  print('¿3 es mayor que 8? ${esMayor(3, 8)}');
  print('¿5 es mayor que 5? ${esMayor(5, 5)}');

  // 3. Duplicar un número
  print('\n--- Duplicar números ---');
  print('Doble de 5: ${duplicar(5)}');
  print('Doble de 15: ${duplicar(15)}');
  print('Doble de 0: ${duplicar(0)}');

  // 4. Operador ternario en funciones
  print('\n--- Verificar mayoría de edad ---');
  print('Edad 17: ${obtenerMensajeEdad(17)}');
  print('Edad 18: ${obtenerMensajeEdad(18)}');
  print('Edad 25: ${obtenerMensajeEdad(25)}');

  // 5. Verificar gases nobles
  print('\n--- Gases nobles ---');
  print('¿2 (Helio) es gas noble? ${esGasNoble(2)}');
  print('¿10 (Neón) es gas noble? ${esGasNoble(10)}');
  print('¿18 (Argón) es gas noble? ${esGasNoble(18)}');
  print('¿8 (Oxígeno) es gas noble? ${esGasNoble(8)}');

  // Mostrar nombres de gases nobles
  print('\n--- Nombres de gases nobles ---');
  gasesNobles.forEach((numero, nombre) {
    print('Número atómico $numero: $nombre');
  });
}

// ========== FUNCIONES FLECHA ==========

/// Verifica si un número es par (versión flecha)
bool esPar(int numero) => numero % 2 == 0;

/// Compara si a es mayor que b (versión flecha)
bool esMayor(int a, int b) => a > b;

/// Duplica un número (versión flecha)
int duplicar(int x) => x * 2;

/// Retorna un mensaje según la edad (usa operador ternario)
String obtenerMensajeEdad(int edad) =>
    edad >= 18 ? 'Mayor de edad' : 'Menor de edad';

/// Mapa de gases nobles (número atómico → nombre)
Map<int, String> gasesNobles = {
  2: 'Helio',
  10: 'Neón',
  18: 'Argón',
  36: 'Kriptón',
  54: 'Xenón',
  86: 'Radón',
};

/// Verifica si un número atómico corresponde a un gas noble
bool esGasNoble(int numeroAtomico) => gasesNobles.containsKey(numeroAtomico);

// ========== COMPARACIÓN: FUNCIÓN NORMAL VS FLECHA ==========

// Función normal (más verbose)
bool esMayorNormal(int a, int b) {
  if (a > b) {
    return true;
  } else {
    return false;
  }
}

// Función flecha (concisa)
bool esMayorFlecha(int a, int b) => a > b;

// La función flecha es ideal cuando:
// 1. La función tiene una sola expresión
// 2. Retorna un valor directamente
// 3. No necesitas lógica compleja
