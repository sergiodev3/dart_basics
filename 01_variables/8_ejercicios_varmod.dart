/// Ejercicio 8: Uso de var, late, final y const
///
/// Demuestra el uso apropiado de diferentes tipos de variables.

void main() {
  // late: se inicializará después
  late String submodulo;

  // final: se asigna una vez en runtime
  final anioActual = DateTime.now().year;

  // const: valor fijo en tiempo de compilación
  const meses = [
    'Enero',
    'Febrero',
    'Marzo',
    'Abril',
    'Mayo',
    'Junio',
    'Julio',
    'Agosto',
    'Septiembre',
    'Octubre',
    'Noviembre',
    'Diciembre',
  ];

  // Inicializar la variable late
  submodulo = 'M5S2 - Desarrollo de Aplicaciones para iOS';

  // Obtener mes actual (0-11, por eso sumamos 1)
  final mesActual = DateTime.now().month - 1;

  print('=== Información Académica ===\n');
  print('Submódulo: $submodulo');
  print('Año Actual: $anioActual');
  print('Mes Actual: ${meses[mesActual]}');
  print('');
  print('Total de meses en el año: ${meses.length}');

  // Mostrar todos los meses
  print('\nCalendario completo:');
  for (var i = 0; i < meses.length; i++) {
    print('  ${(i + 1).toString().padLeft(2, '0')}. ${meses[i]}');
  }
}
