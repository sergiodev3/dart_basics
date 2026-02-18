/// Ejemplo 2: Operadores de incremento y decremento
///
/// ++var (prefijo): Incrementa ANTES de evaluar
/// var++ (postfijo): Incrementa DESPUÉS de evaluar
/// --var (prefijo): Decrementa ANTES de evaluar
/// var-- (postfijo): Decrementa DESPUÉS de evaluar

void main() {
  print('=== OPERADORES DE INCREMENTO Y DECREMENTO ===\n');

  // 1. Incremento PREFIJO (++var)
  print('--- Incremento Prefijo (++var) ---');
  int contador1 = 5;
  print('Valor inicial: $contador1');
  print(
    'Resultado de ++contador1: ${++contador1}',
  ); // Incrementa primero, luego muestra
  print('Valor después: $contador1\n');

  // 2. Incremento POSTFIJO (var++)
  print('--- Incremento Postfijo (var++) ---');
  int contador2 = 5;
  print('Valor inicial: $contador2');
  print(
    'Resultado de contador2++: ${contador2++}',
  ); // Muestra primero, luego incrementa
  print('Valor después: $contador2\n');

  // 3. Decremento PREFIJO (--var)
  print('--- Decremento Prefijo (--var) ---');
  int contador3 = 5;
  print('Valor inicial: $contador3');
  print(
    'Resultado de --contador3: ${--contador3}',
  ); // Decrementa primero, luego muestra
  print('Valor después: $contador3\n');

  // 4. Decremento POSTFIJO (var--)
  print('--- Decremento Postfijo (var--) ---');
  int contador4 = 5;
  print('Valor inicial: $contador4');
  print(
    'Resultado de contador4--: ${contador4--}',
  ); // Muestra primero, luego decrementa
  print('Valor después: $contador4\n');

  // Ejemplo práctico: contador de visitas
  print('=== EJEMPLO PRÁCTICO: Contador ===\n');
  int visitas = 0;
  print('Visitas iniciales: $visitas');
  print('Nueva visita (++): ${++visitas}');
  print('Nueva visita (++): ${++visitas}');
  print('Nueva visita (++): ${++visitas}');
  print('Total de visitas: $visitas');
}
