/// Ejemplo 1: Funciones básicas en Dart
///
/// Las funciones son bloques de código reutilizables.
/// Tipos de funciones:
/// - Sin parámetros y sin retorno (void)
/// - Con parámetros y sin retorno
/// - Con parámetros y con retorno

void main() {
  print('=== FUNCIONES BÁSICAS ===\n');

  // 1. Función sin parámetros ni retorno
  mostrarSaludo();

  // 2. Función con parámetros y sin retorno
  print('\n--- Suma de números ---');
  sumar(5.8, 5.7);
  sumar(10.5, 3.2);

  // 3. Función con parámetros y con retorno
  print('\n--- Resta con retorno ---');
  var resultado = restar(15.0, 7.0);
  print('Resultado guardado: $resultado');

  double otroResultado = restar(20.5, 8.3);
  print('Otro resultado: ${otroResultado.toStringAsFixed(2)}');

  // 4. Función que verifica número par/impar
  print('\n--- Verificar par/impar ---');
  verificarParidad(8);
  verificarParidad(15);
  verificarParidad(0);

  // 5. Función que muestra tabla de multiplicar
  print('\n--- Tabla de multiplicar ---');
  mostrarTablaMultiplicar(7);
}

// ========== DEFINICIÓN DE FUNCIONES ==========

/// Función sin parámetros ni retorno
void mostrarSaludo() {
  print('--- Saludo simple ---');
  print('¡Hola! Bienvenido a Dart');
  print('Las funciones hacen el código reutilizable\n');
}

/// Función con parámetros y sin retorno
///
/// [num1] y [num2] son los números a sumar
void sumar(double num1, double num2) {
  var resultado = num1 + num2;
  print('$num1 + $num2 = ${resultado.toStringAsFixed(2)}');
}

/// Función con parámetros y con retorno
///
/// Retorna la resta de [num1] - [num2]
double restar(double num1, double num2) {
  return num1 - num2;
}

/// Verifica si un número es par o impar
void verificarParidad(int numero) {
  if (numero % 2 == 0) {
    print('$numero es un número par');
  } else {
    print('$numero es un número impar');
  }
}

/// Muestra la tabla de multiplicar de un número
void mostrarTablaMultiplicar(int numero) {
  print('Tabla del $numero:');
  for (int i = 1; i <= 10; i++) {
    var resultado = numero * i;
    print('  $numero × $i = $resultado');
  }
}
