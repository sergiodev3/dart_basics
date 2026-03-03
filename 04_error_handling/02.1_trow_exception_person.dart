void main() {
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
