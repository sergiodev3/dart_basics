/// Ejemplo 1: Try-Catch básico
///
/// Try-catch permite capturar y manejar errores sin que la aplicación se detenga.
/// Estructura: try { ... } catch (e) { ... } finally { ... }

void main() {
  print('=== TRY-CATCH BÁSICO ===\n');

  // Ejemplo 1: División por cero
  print('--- División por cero ---');
  try {
    int resultado = 10 ~/ 0; // División entera por cero causa error
    print('Resultado: $resultado');
  } catch (e) {
    print('❌ Error capturado: $e');
  }

  // Ejemplo 2: Parsing de string a número
  print('\n--- Parsing inválido ---');
  try {
    int numero = int.parse('abc123'); // No es un número válido
    print('Número: $numero');
  } catch (e) {
    print('❌ Error al convertir: ${e.toString()}');
  }

  // Ejemplo 3: Con finally (siempre se ejecuta)
  print('\n--- Try-Catch con Finally ---');
  try {
    List<int> numeros = [1, 2, 3];
    print('Accediendo al índice 5: ${numeros[5]}');
  } catch (e) {
    print('❌ Error: Índice fuera de rango');
  } finally {
    print('✓ Bloque finally siempre se ejecuta');
  }

  // Ejemplo 4: Try-catch exitoso
  print('\n--- Operación exitosa ---');
  try {
    int resultado = 20 ~/ 4;
    print('✓ División exitosa: 20 ÷ 4 = $resultado');
  } catch (e) {
    print('❌ Error: $e');
  } finally {
    print('✓ Operación completada');
  }
}
