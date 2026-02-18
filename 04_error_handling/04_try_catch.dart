/// Ejemplo 5: Try-Catch con diferentes tipos de errores
///
/// Demuestra el manejo de múltiples tipos de errores en una aplicación.

void main() {
  print('=== TRY-CATCH AVANZADO ===\n');

  // Ejemplo 1: División segura
  print('--- División con manejo de errores ---');
  dividirSeguro(20, 5);
  dividirSeguro(10, 0);

  // Ejemplo 2: Parsing seguro
  print('\n--- Conversión de strings ---');
  parseSeguro('123');
  parseSeguro('abc');
  parseSeguro('45.67');

  // Ejemplo 3: Acceso a lista
  print('\n--- Acceso seguro a lista ---');
  var numeros = [10, 20, 30, 40, 50];
  obtenerElemento(numeros, 2);
  obtenerElemento(numeros, 10);

  // Ejemplo 4: Operaciones encadenadas
  print('\n--- Operaciones encadenadas ---');
  procesarDatos('42');
  procesarDatos('invalido');
}

/// Realiza una división con manejo de errores
void dividirSeguro(int a, int b) {
  try {
    var resultado = a ~/ b;
    print('✓ $a ÷ $b = $resultado');
  } catch (e) {
    print('❌ Error al dividir $a ÷ $b: División por cero');
  }
}

/// Convierte un string a número de forma segura
void parseSeguro(String texto) {
  try {
    var numero = int.parse(texto);
    print('✓ "$texto" → $numero');
  } catch (e) {
    print('❌ "$texto" no es un número entero válido');
  }
}

/// Obtiene un elemento de la lista de forma segura
void obtenerElemento(List<int> lista, int indice) {
  try {
    var elemento = lista[indice];
    print('✓ Elemento en posición $indice: $elemento');
  } catch (e) {
    print('❌ Índice $indice fuera de rango (tamaño: ${lista.length})');
  }
}

/// Procesa datos con múltiples operaciones
void procesarDatos(String entrada) {
  try {
    print('\nProcesando: "$entrada"');

    // Paso 1: Convertir a número
    var numero = int.parse(entrada);
    print('  1. Conversión exitosa: $numero');

    // Paso 2: Validar rango
    if (numero < 0 || numero > 100) {
      throw RangeError('El número debe estar entre 0 y 100');
    }
    print('  2. Validación exitosa');

    // Paso 3: Realizar cálculo
    var resultado = 100 ~/ numero;
    print('  3. Resultado: 100 ÷ $numero = $resultado');

    print('✓ Proceso completado exitosamente');
  } catch (e) {
    print('❌ Error en el procesamiento: ${e.toString()}');
  }
}
