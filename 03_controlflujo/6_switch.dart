/// Ejemplo 6: Sentencia switch
///
/// Switch permite comparar una variable contra múltiples valores.
/// Más legible que múltiples if-else cuando se compara la misma variable.

void main() {
  print('=== SENTENCIA SWITCH ===\n');

  // Ejemplo básico: estado de orden
  print('--- Estado de orden ---');
  var estadoOrden = 'ENVIADO';

  switch (estadoOrden) {
    case 'PENDIENTE':
      print('🕒 Orden pendiente de procesamiento');
    case 'PROCESANDO':
      print('⏳ Orden en proceso');
    case 'ENVIADO':
      print('🚚 Orden enviada');
    case 'ENTREGADO':
      print('✅ Orden entregada');
    case 'CANCELADO':
      print('❌ Orden cancelada');
    default:
      print('❓ Estado desconocido');
  }

  // Ejemplo: días de la semana
  print('\n--- Días de la semana ---');
  var dia = 3;

  switch (dia) {
    case 1:
      print('Lunes - Inicio de semana 📅');
    case 2:
      print('Martes');
    case 3:
      print('Miércoles - Mitad de semana 🎉');
    case 4:
      print('Jueves');
    case 5:
      print('Viernes - ¡Casi fin de semana! 🎆');
    case 6:
      print('Sábado - Fin de semana 🎈');
    case 7:
      print('Domingo - Descanso 🛌');
    default:
      print('Día inválido (debe ser 1-7)');
  }

  // Ejemplo: niveles de acceso
  print('\n--- Niveles de acceso ---');

  var rol = 'ADMIN';
  print('Rol: $rol');
  switch (rol) {
    case 'ADMIN':
      print('  • Acceso total al sistema');
      print('  • Puede crear, editar y eliminar');
      print('  • Gestionar usuarios');
    case 'EDITOR':
      print('  • Puede crear y editar contenido');
      print('  • No puede eliminar');
    case 'USUARIO':
      print('  • Solo lectura');
      print('  • Sin permisos de edición');
    default:
      print('  • Rol no reconocido');
  }
}
