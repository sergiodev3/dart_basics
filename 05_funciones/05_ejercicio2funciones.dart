/// Ejercicio 5: Funciones combinadas
///
/// Combina varios conceptos: sistema de pagos, días de la semana.
/// Duplica intencionalmente algunas funciones para practicar.

void main() {
  print('=== EJERCICIOS COMBINADOS ===\n');

  // 1. Sistema de pagos
  print('💳 Sistema de Pagos\n');
  procesarPago(25000, efectivo: true, tarjetaCredito: false);
  print('');
  procesarPago(18000, efectivo: false, tarjetaCredito: true);

  // 2. Días de la semana
  print('\n📅 Consulta de Días\n');
  for (var i = 1; i <= 8; i++) {
    print('Día $i: ${obtenerNombreDia(i)}');
  }
}

/// Procesa un pago con descuentos según el método
void procesarPago(
  double monto, {
  required bool efectivo,
  required bool tarjetaCredito,
}) {
  const descuentoEfectivo = 0.10;
  const descuentoTarjeta = 0.05;

  print('Monto: \$${monto.toStringAsFixed(2)}');

  if (efectivo) {
    var descuento = monto * descuentoEfectivo;
    var total = monto - descuento;
    print('Método: Efectivo 💵');
    print('Descuento: -\$${descuento.toStringAsFixed(2)} (10%)');
    print('Total: \$${total.toStringAsFixed(2)}');
  } else if (tarjetaCredito) {
    var descuento = monto * descuentoTarjeta;
    var total = monto - descuento;
    print('Método: Tarjeta 💳');
    print('Descuento: -\$${descuento.toStringAsFixed(2)} (5%)');
    print('Total: \$${total.toStringAsFixed(2)}');
  } else {
    print('Método: Transferencia 🏦');
    print('Total: \$${monto.toStringAsFixed(2)} (sin descuento)');
  }
}

/// Retorna el nombre del día según su número
String obtenerNombreDia(int numDia) {
  return switch (numDia) {
    1 => 'Lunes',
    2 => 'Martes',
    3 => 'Miércoles',
    4 => 'Jueves',
    5 => 'Viernes',
    6 => 'Sábado',
    7 => 'Domingo',
    _ => 'Desconocido',
  };
}
