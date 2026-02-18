/// Ejemplo 6: Catch con 'on' para tipos específicos
///
/// El operador 'on' permite capturar tipos específicos de excepciones.
/// Útil cuando quieres manejar diferentes errores de forma distinta.

void main() {
  print('=== CATCH CON ON (Tipos específicos) ===\n');

  // Ejemplo 1: FormatException
  print('--- Manejo de FormatException ---');
  try {
    throw FormatException('Error de formato en los datos');
  } on FormatException catch (e) {
    print('✗ Error de formato capturado: $e\n');
  } catch (e) {
    print('✗ Otro tipo de error: $e');
  }

  // Ejemplo 2: Múltiples tipos de excepciones
  print('--- Múltiples tipos de excepciones ---');

  procesarOperacion('dividir', 10, 0);
  procesarOperacion('parsear', 0, 0);
  procesarOperacion('acceso', 0, 0);

  // Ejemplo 3: Jerarquía de excepciones
  print('\n--- Orden de captura (específico a general) ---');

  try {
    var numero = int.parse('abc');
    print('Número: $numero');
  } on FormatException catch (e) {
    print('✗ Error de formato específico');
    print('  Mensaje: ${e.message}');
  } on Exception catch (e) {
    print('✗ Excepción general: $e');
  } catch (e) {
    print('✗ Error desconocido: $e');
  }
}

/// Procesa diferentes tipos de operaciones que pueden fallar
void procesarOperacion(String tipo, int a, int b) {
  print('\nOperación: $tipo');

  try {
    switch (tipo) {
      case 'dividir':
        if (b == 0) throw UnsupportedError('División por cero');
        print('  Resultado: ${a ~/ b}');

      case 'parsear':
        throw FormatException('Formato inválido');

      case 'acceso':
        throw RangeError('Índice fuera de rango');

      default:
        throw Exception('Operación desconocida');
    }
  } on UnsupportedError catch (e) {
    print('  ✗ Error: ${e.message}');
  } on FormatException catch (e) {
    print('  ✗ Error de formato: ${e.message}');
  } on RangeError catch (e) {
    print('  ✗ Error de rango: ${e.message}');
  } catch (e) {
    print('  ✗ Error general: $e');
  }
}
