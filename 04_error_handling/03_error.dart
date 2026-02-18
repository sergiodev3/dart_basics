/// Ejemplo 4: Manejo de errores con ArgumentError
///
/// ArgumentError se usa cuando una función recibe argumentos inválidos.
/// Es útil para validar parámetros de entrada.

void main() {
  print('=== MANEJO DE ARGUMENTERROR ===\n');

  var calculadora = Calculadora();

  // Ejemplo 1: División válida
  print('--- División válida ---');
  try {
    var resultado = calculadora.dividir(10, 2);
    print('✓ 10 ÷ 2 = $resultado\n');
  } catch (e) {
    print('❌ Error: $e\n');
  }

  // Ejemplo 2: División por cero
  print('--- División por cero ---');
  try {
    var resultado = calculadora.dividir(10, 0);
    print('Resultado: $resultado');
  } catch (e) {
    print('❌ Error capturado: $e\n');
  }

  // Ejemplo 3: Múltiples operaciones
  print('--- Operaciones múltiples ---');
  var operaciones = [
    [20, 4],
    [15, 3],
    [8, 0], // Error: división por cero
    [100, 10],
  ];

  for (var i = 0; i < operaciones.length; i++) {
    var a = operaciones[i][0];
    var b = operaciones[i][1];

    try {
      var resultado = calculadora.dividir(a, b);
      print('${i + 1}. $a ÷ $b = $resultado');
    } catch (e) {
      print('${i + 1}. $a ÷ $b → ❌ Error: División por cero');
    }
  }
}

/// Clase calculadora con validación de argumentos
class Calculadora {
  /// Divide dos números enteros
  ///
  /// Lanza [ArgumentError] si el divisor es cero
  int dividir(int dividendo, int divisor) {
    if (divisor == 0) {
      throw ArgumentError(
        'No se puede dividir por cero.\n'
        '  Dividendo: $dividendo\n'
        '  Divisor: $divisor',
      );
    }
    return dividendo ~/ divisor;
  }

  /// Calcula el promedio de una lista de números
  ///
  /// Lanza [ArgumentError] si la lista está vacía
  double promedio(List<int> numeros) {
    if (numeros.isEmpty) {
      throw ArgumentError('La lista no puede estar vacía');
    }
    var suma = numeros.reduce((a, b) => a + b);
    return suma / numeros.length;
  }
}
