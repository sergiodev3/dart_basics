/// Ejemplo 1: Operadores aritméticos en Dart
///
/// Dart soporta los operadores matemáticos estándar:
/// + (suma), - (resta), * (multiplicación), / (división)
/// ~/ (división entera), % (módulo/residuo)

void main() {
  print('=== OPERADORES ARITMÉTICOS ===\n');
  
  // Operaciones básicas
  int a = 10;
  int b = 3;
  
  print('Números: a = $a, b = $b\n');
  
  // Suma
  print('Suma: $a + $b = ${a + b}');
  
  // Resta
  print('Resta: $a - $b = ${a - b}');
  
  // Multiplicación
  print('Multiplicación: $a * $b = ${a * b}');
  
  // División (retorna double)
  print('División: $a / $b = ${a / b}');
  
  // División entera (retorna int)
  print('División entera: $a ~/ $b = ${a ~/ b}');
  
  // Módulo (residuo)
  print('Módulo: $a % $b = ${a % b}');
  
  // Ejemplo práctico: calculadora simple
  print('\n=== EJEMPLO PRÁCTICO ===\n');
  
  double precio1 = 150.50;
  double precio2 = 89.99;
  double total = precio1 + precio2;
  double iva = total * 0.16;
  double totalConIva = total + iva;
  
  print('Producto 1: \$$precio1');
  print('Producto 2: \$$precio2');
  print('Subtotal: \$${total.toStringAsFixed(2)}');
  print('IVA (16%): \$${iva.toStringAsFixed(2)}');
  print('Total a pagar: \$${totalConIva.toStringAsFixed(2)}');
}
