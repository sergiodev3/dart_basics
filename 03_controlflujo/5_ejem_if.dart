/// Ejemplo 5: Sistema de aprobación de crédito
///
/// Demuestra el uso de condicionales para validar requisitos múltiples.

void main() {
  print('=== SISTEMA DE APROBACIÓN DE CRÉDITO AUTOMOTRIZ ===\n');

  const double valorAuto = 380000;
  const double porcentajeEnganche = 0.10; // 10%
  const double ingresoMinimo = 35000;

  // Evaluar diferentes casos
  print('CASO 1: Solicitante aprobado\n');
  evaluarCredito(38000, true, valorAuto, porcentajeEnganche, ingresoMinimo);

  print('\n${'=' * 50}\n');
  print('CASO 2: Sin enganche\n');
  evaluarCredito(40000, false, valorAuto, porcentajeEnganche, ingresoMinimo);

  print('\n${'=' * 50}\n');
  print('CASO 3: Ingreso insuficiente\n');
  evaluarCredito(28000, true, valorAuto, porcentajeEnganche, ingresoMinimo);
}

/// Evalúa una solicitud de crédito automotriz
void evaluarCredito(
  double ingresoMensual,
  bool tieneEnganche,
  double valorAuto,
  double porcentajeEnganche,
  double ingresoMinimo,
) {
  final montoEnganche = valorAuto * porcentajeEnganche;

  // Mostrar información
  print('🚗 Valor del automóvil: \$${valorAuto.toStringAsFixed(2)}');
  print('💵 Ingreso mensual: \$${ingresoMensual.toStringAsFixed(2)}');
  print('💰 Enganche requerido (10%): \$${montoEnganche.toStringAsFixed(2)}');
  print('📄 ¿Tiene enganche?: ${tieneEnganche ? "Sí" : "No"}');
  print('');
  print('-'.padRight(50, '-'));
  print('EVALUACIÓN DE CRÉDITO');
  print('-'.padRight(50, '-'));

  // Evaluar elegibilidad
  if (ingresoMensual >= ingresoMinimo && tieneEnganche) {
    print('✓ ¡APROBADO!');
    print('');
    print('Detalles:');
    print(
      '  • Ingreso suficiente: \$${ingresoMensual.toStringAsFixed(2)} >= \$${ingresoMinimo.toStringAsFixed(2)}',
    );
    print('  • Cuenta con enganche de: \$${montoEnganche.toStringAsFixed(2)}');
    print('');

    // Cálculo de financiamiento
    final montoFinanciar = valorAuto - montoEnganche;
    print('Monto a financiar: \$${montoFinanciar.toStringAsFixed(2)}');
  } else {
    print('❌ CRÉDITO NO APROBADO');
    print('');
    print('Razones:');

    if (ingresoMensual < ingresoMinimo) {
      final faltante = ingresoMinimo - ingresoMensual;
      print('  • Ingreso insuficiente');
      print('    Actual: \$${ingresoMensual.toStringAsFixed(2)}');
      print('    Requerido: \$${ingresoMinimo.toStringAsFixed(2)}');
      print('    Faltante: \$${faltante.toStringAsFixed(2)}');
    }

    if (!tieneEnganche) {
      print(
        '  • No cuenta con el enganche de: \$${montoEnganche.toStringAsFixed(2)}',
      );
    }
  }

  print('-'.padRight(50, '-'));
}
