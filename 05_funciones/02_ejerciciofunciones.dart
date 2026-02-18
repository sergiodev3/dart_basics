/// Ejercicio 2: Sistema de aprobación de crédito
///
/// Demuestra el uso de funciones con validaciones booleanas.

void main() {
  print('=== SISTEMA DE APROBACIÓN DE CRÉDITO ===\n');

  // Caso 1: Rechazado por falta de enganche
  print('📋 Caso 1: Sin enganche');
  evaluarCredito(false, 32000);

  // Caso 2: Rechazado por sueldo insuficiente
  print('\n📋 Caso 2: Sueldo insuficiente');
  evaluarCredito(true, 25000);

  // Caso 3: Aprobado
  print('\n📋 Caso 3: Requisitos cumplidos');
  evaluarCredito(true, 35000);

  // Caso 4: Sueldo justo en el límite
  print('\n📋 Caso 4: Sueldo en el límite');
  evaluarCredito(true, 30000);
}

/// Evalúa si un solicitante es apto para un crédito
///
/// [tieneEnganche]: Indica si el solicitante cuenta con enganche
/// [sueldo]: Sueldo mensual del solicitante
void evaluarCredito(bool tieneEnganche, double sueldo) {
  const sueldoMinimo = 30000.0;

  print('Datos del solicitante:');
  print('  • Enganche: ${tieneEnganche ? "Sí" : "No"}');
  print('  • Sueldo mensual: \$${sueldo.toStringAsFixed(2)}');
  print('');

  if (tieneEnganche && sueldo >= sueldoMinimo) {
    print('✅ CRÉDITO APROBADO');
    print('  Cumple con los requisitos:');
    print('  ✓ Cuenta con enganche');
    print('  ✓ Sueldo suficiente (mínimo: \$$sueldoMinimo)');
  } else {
    print('❌ CRÉDITO NO APROBADO');
    print('  Razones:');

    if (!tieneEnganche) {
      print('  ✗ No cuenta con enganche');
    }

    if (sueldo < sueldoMinimo) {
      var faltante = sueldoMinimo - sueldo;
      print('  ✗ Sueldo insuficiente');
      print('    Actual: \$$sueldo');
      print('    Requerido: \$$sueldoMinimo');
      print('    Faltante: \$${faltante.toStringAsFixed(2)}');
    }
  }

  print('─' * 45);
}
