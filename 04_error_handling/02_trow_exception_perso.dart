/// Ejemplo 3: Excepciones personalizadas
///
/// Puedes crear tus propias clases de excepciones para manejar
/// errores específicos de tu aplicación.

void main() {
  print('=== EXCEPCIONES PERSONALIZADAS ===\n');

  // Ejemplo 1: Edad inválida
  print('--- Validación de edad ---');
  try {
    verificarEdad(16);
  } catch (e) {
    print('❌ $e\n');
  } finally {
    print('Verificación completada\n');
  }

  // Ejemplo 2: Edad válida
  try {
    verificarEdad(25);
  } catch (e) {
    print('❌ $e');
  }

  // Ejemplo 3: Saldo insuficiente
  print('\n--- Sistema bancario ---');
  try {
    procesarRetiro(1000, 1500);
  } catch (e) {
    print('❌ $e');
  }

  try {
    procesarRetiro(1000, 500);
  } catch (e) {
    print('❌ $e');
  }
}

// ========== EXCEPCIONES PERSONALIZADAS ==========

/// Excepción para edad inválida
class EdadInvalidaException implements Exception {
  final String mensaje;
  final int edadActual;
  final int edadMinima;

  EdadInvalidaException(
    this.mensaje, {
    this.edadActual = 0,
    this.edadMinima = 18,
  });

  @override
  String toString() {
    return 'EdadInvalidaException: $mensaje\n'
        '  Edad actual: $edadActual años\n'
        '  Edad mínima: $edadMinima años\n'
        '  Faltan: ${edadMinima - edadActual} años';
  }
}

/// Excepción para saldo insuficiente
class SaldoInsuficienteException implements Exception {
  final double saldoActual;
  final double montoSolicitado;

  SaldoInsuficienteException(this.saldoActual, this.montoSolicitado);

  @override
  String toString() {
    final faltante = montoSolicitado - saldoActual;
    return 'SaldoInsuficienteException:\n'
        '  Saldo disponible: \$${saldoActual.toStringAsFixed(2)}\n'
        '  Monto solicitado: \$${montoSolicitado.toStringAsFixed(2)}\n'
        '  Faltante: \$${faltante.toStringAsFixed(2)}';
  }
}

// ========== FUNCIONES ==========

/// Verifica si la edad es válida
void verificarEdad(int edad) {
  const edadMinima = 18;

  if (edad < edadMinima) {
    throw EdadInvalidaException(
      'Edad insuficiente para el acceso',
      edadActual: edad,
      edadMinima: edadMinima,
    );
  }

  print('✓ Acceso permitido (Edad: $edad años)');
}

/// Procesa un retiro bancario
void procesarRetiro(double saldo, double monto) {
  print('\nProcesando retiro de \$${monto.toStringAsFixed(2)}...');

  if (monto > saldo) {
    throw SaldoInsuficienteException(saldo, monto);
  }

  final nuevoSaldo = saldo - monto;
  print('✓ Retiro exitoso');
  print('  Saldo anterior: \$${saldo.toStringAsFixed(2)}');
  print('  Monto retirado: \$${monto.toStringAsFixed(2)}');
  print('  Saldo actual: \$${nuevoSaldo.toStringAsFixed(2)}');
}
