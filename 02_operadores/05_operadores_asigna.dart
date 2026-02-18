/// Ejemplo 5: Operadores de asignación
///
/// = (asignación simple)
/// += (sumar y asignar)
/// -= (restar y asignar)
/// *= (multiplicar y asignar)
/// /= (dividir y asignar)
/// ~/= (dividir entero y asignar)
/// %= (módulo y asignar)

void main() {
  print('=== OPERADORES DE ASIGNACIÓN ===\n');

  // Asignación simple
  int numero = 10;
  print('Valor inicial: $numero\n');

  // Sumar y asignar (+=)
  print('--- Operador += ---');
  numero += 5; // Equivale a: numero = numero + 5
  print('Después de += 5: $numero\n');

  // Restar y asignar (-=)
  print('--- Operador -= ---');
  numero -= 3; // Equivale a: numero = numero - 3
  print('Después de -= 3: $numero\n');

  // Multiplicar y asignar (*=)
  print('--- Operador *= ---');
  numero *= 2; // Equivale a: numero = numero * 2
  print('Después de *= 2: $numero\n');

  // Dividir y asignar (/=)
  print('--- Operador /= ---');
  double decimal = numero.toDouble();
  decimal /= 4; // Equivale a: decimal = decimal / 4
  print('Después de /= 4: $decimal\n');

  // Dividir entero y asignar (~/=)
  print('--- Operador ~/= ---');
  int entero = 20;
  entero ~/= 3; // Equivale a: entero = entero ~/ 3
  print('20 ~/= 3: $entero\n');

  // Módulo y asignar (%=)
  print('--- Operador %= ---');
  int resto = 17;
  resto %= 5; // Equivale a: resto = resto % 5
  print('17 %= 5: $resto\n');

  // Ejemplo práctico: cuenta bancaria
  print('=== EJEMPLO PRÁCTICO: Cuenta Bancaria ===\n');
  double saldo = 1000.0;
  print('Saldo inicial: \$${saldo.toStringAsFixed(2)}');

  saldo += 500; // Depósito
  print('Después de depósito (+500): \$${saldo.toStringAsFixed(2)}');

  saldo -= 200; // Retiro
  print('Después de retiro (-200): \$${saldo.toStringAsFixed(2)}');

  saldo *= 1.05; // Intereses 5%
  print('Después de intereses (5%): \$${saldo.toStringAsFixed(2)}');
}
