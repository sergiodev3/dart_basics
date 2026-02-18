/// Ejercicio 4: Sistema de aprobación de crédito (versión simplificada)
///
/// Similar al ejercicio 2, pero con código más limpio y directo.

void main() {
  print('=== SISTEMA DE CRÉDITO SIMPLIFICADO ===\n');

  // Caso 1: Sin enganche
  print('📋 Evaluación 1:');
  evaluarSolicitud(false, 32000);

  // Caso 2: Con enganche pero sueldo bajo
  print('\n📋 Evaluación 2:');
  evaluarSolicitud(true, 28000);

  // Caso 3: Aprobado
  print('\n📋 Evaluación 3:');
  evaluarSolicitud(true, 35000);

  // Caso 4: Sueldo alto sin enganche
  print('\n📋 Evaluación 4:');
  evaluarSolicitud(false, 40000);
}

/// Evalúa una solicitud de crédito
///
/// [tieneEnganche]: Si el solicitante cuenta con el enganche inicial
/// [sueldo]: Ingreso mensual del solicitante
void evaluarSolicitud(bool tieneEnganche, double sueldo) {
  const sueldoMinimo = 30000.0;

  print('Sueldo: \$${sueldo.toStringAsFixed(2)}');
  print('Enganche: ${tieneEnganche ? "Sí ✓" : "No ✗"}');

  if (tieneEnganche && sueldo >= sueldoMinimo) {
    print('Resultado: ✅ APROBADO');
  } else {
    print('Resultado: ❌ RECHAZADO');
    if (!tieneEnganche) print('  • Falta enganche');
    if (sueldo < sueldoMinimo) print('  • Sueldo insuficiente');
  }
  print('─' * 40);
}
