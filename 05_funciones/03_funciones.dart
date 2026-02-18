/// Ejercicio 3: Funciones variadas
///
/// Demuestra diferentes tipos de funciones: validación de crédito,
/// sistema de pagos con descuentos, y conversión de días.

void main() {
  print('=== EJERCICIOS DE FUNCIONES ===\n');

  // 1. Sistema de pagos con descuentos
  print('💰 Sistema de pagos');
  procesarPago(20000, efectivo: true, tarjetaCredito: false);
  print('');
  procesarPago(15000, efectivo: false, tarjetaCredito: true);
  print('');
  procesarPago(10000, efectivo: false, tarjetaCredito: false);

  // 2. Convertir número de día a nombre
  print('\n📅 Días de la semana');
  for (var i = 1; i <= 7; i++) {
    var dia = obtenerNombreDia(i);
    print('$i → $dia');
  }
  print('8 → ${obtenerNombreDia(8)}');
}

/// Procesa un pago aplicando descuentos según el método
///
/// [monto]: Monto total del pago
/// [efectivo]: Si el pago es en efectivo (10% descuento)
/// [tarjetaCredito]: Si el pago es con tarjeta de crédito (5% descuento)
void procesarPago(
  double monto, {
  required bool efectivo,
  required bool tarjetaCredito,
}) {
  const descuentoEfectivo = 0.10; // 10%
  const descuentoTarjeta = 0.05; // 5%

  print('Monto original: \$${monto.toStringAsFixed(2)}');

  if (efectivo) {
    var descuento = monto * descuentoEfectivo;
    var total = monto - descuento;
    print('Método de pago: Efectivo 💵');
    print('Descuento (10%): -\$${descuento.toStringAsFixed(2)}');
    print('Total a pagar: \$${total.toStringAsFixed(2)} ✓');
  } else if (tarjetaCredito) {
    var descuento = monto * descuentoTarjeta;
    var total = monto - descuento;
    print('Método de pago: Tarjeta de Crédito 💳');
    print('Descuento (5%): -\$${descuento.toStringAsFixed(2)}');
    print('Total a pagar: \$${total.toStringAsFixed(2)} ✓');
  } else {
    print('Método de pago: Transferencia 🏦');
    print('Sin descuento aplicado');
    print('Total a pagar: \$${monto.toStringAsFixed(2)}');
  }
}

/// Convierte el número de día (1-7) a su nombre
///
/// Retorna el nombre del día o "Desconocido" si el número es inválido
String obtenerNombreDia(int numeroDia) {
  switch (numeroDia) {
    case 1:
      return 'Lunes';
    case 2:
      return 'Martes';
    case 3:
      return 'Miércoles';
    case 4:
      return 'Jueves';
    case 5:
      return 'Viernes';
    case 6:
      return 'Sábado';
    case 7:
      return 'Domingo';
    default:
      return 'Día desconocido';
  }
}
