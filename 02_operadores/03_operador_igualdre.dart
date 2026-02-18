/// Ejemplo 3: Operadores de igualdad y relacionales
///
/// == (igual a)
/// != (diferente de)
/// > (mayor que)
/// < (menor que)
/// >= (mayor o igual que)
/// <= (menor o igual que)

void main() {
  print('=== OPERADORES DE IGUALDAD Y RELACIONALES ===\n');

  int a = 10;
  int b = 20;
  int c = 10;

  print('Valores: a = $a, b = $b, c = $c\n');

  // Operadores de igualdad
  print('--- Igualdad ---');
  print('a == b: ${a == b}'); // false
  print('a == c: ${a == c}'); // true
  print('a != b: ${a != b}'); // true
  print('a != c: ${a != c}'); // false

  // Operadores relacionales
  print('\n--- Comparaciones ---');
  print('a < b: ${a < b}'); // true
  print('a > b: ${a > b}'); // false
  print('a <= c: ${a <= c}'); // true
  print('b >= 20: ${b >= 20}'); // true

  // Ejemplo práctico: verificar edad
  print('\n=== EJEMPLO PRÁCTICO: Verificación de Edad ===\n');

  int edad = 17;
  const int edadMinima = 18;

  print('Edad: $edad años');
  print('Edad mínima requerida: $edadMinima años');
  print('');

  if (edad >= edadMinima) {
    print('✓ Acceso permitido (mayor de edad)');
  } else {
    int aniosFaltantes = edadMinima - edad;
    print('❌ Acceso denegado (faltan $aniosFaltantes año(s))');
  }
}
