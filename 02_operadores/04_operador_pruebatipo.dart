/// Ejemplo 4: Operadores de prueba de tipo
///
/// is: Verifica si un objeto es de un tipo específico
/// is!: Verifica si un objeto NO es de un tipo específico
/// as: Convierte (cast) un objeto a un tipo específico

void main() {
  print('=== OPERADORES DE PRUEBA DE TIPO ===\n');

  // 1. Operador 'is' - Verificar tipo
  print('--- Operador IS (verificar tipo) ---');

  dynamic valor1 = 'Hola Dart';
  dynamic valor2 = 42;
  dynamic valor3 = 3.14;
  dynamic valor4 = true;

  print('valor1 es String: ${valor1 is String}'); // true
  print('valor2 es int: ${valor2 is int}'); // true
  print('valor3 es double: ${valor3 is double}'); // true
  print('valor4 es bool: ${valor4 is bool}'); // true
  print('valor1 es int: ${valor1 is int}'); // false

  // 2. Operador 'is!' - Verificar que NO es de un tipo
  print('\n--- Operador IS! (verificar que NO es tipo) ---');

  print('valor2 es NOT String: ${valor2 is! String}'); // true
  print('valor1 es NOT String: ${valor1 is! String}'); // false

  // 3. Operador 'as' - Convertir tipo (cast)
  print('\n--- Operador AS (convertir tipo) ---');

  dynamic variableDinamica = 'Texto dinámico';
  String textoConvertido = variableDinamica as String;
  print('Valor convertido: $textoConvertido');

  // Ejemplo práctico: procesamiento de datos
  print('\n=== EJEMPLO PRÁCTICO: Procesamiento de Datos ===\n');

  List<dynamic> datos = ['Juan', 25, 175.5, true, 'Estudiante'];

  for (var i = 0; i < datos.length; i++) {
    var dato = datos[i];
    print('Dato $i: $dato');

    if (dato is String) {
      print('  → Es texto (${dato.length} caracteres)');
    } else if (dato is int) {
      print('  → Es número entero');
    } else if (dato is double) {
      print('  → Es número decimal');
    } else if (dato is bool) {
      print('  → Es booleano: ${dato ? "Verdadero" : "Falso"}');
    }
  }
}
