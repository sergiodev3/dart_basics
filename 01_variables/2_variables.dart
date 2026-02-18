/// Ejemplo 2: Tipos de variables básicas en Dart
///
/// Dart infiere automáticamente el tipo de variable usando 'var'.
/// Tipos comunes: String, int, double, List, Map

void main() {
  // Variables básicas
  var escuela = 'CBTIS 258';
  var anio = 2026;
  var promedio = 9.7;

  // Lista (Array)
  var materias = [
    'Programación',
    'Inglés',
    'Humanidades',
    'Conciencia Histórica',
  ];

  // Mapa (Dictionary/Object)
  var imagen = {
    'tags': ['educacion', 'dart'],
    'url': '//path/to/imagen.jpg',
  };

  // Imprimir valores
  print('=== Información Escolar ===');
  print('Escuela: $escuela');
  print('Año: $anio');
  print('Promedio: $promedio');
  print('Materias: $materias');
  print('Imagen: $imagen');

  // Verificar tipos en tiempo de ejecución
  print('\n=== Tipos de Datos ===');
  print('Tipo de escuela: ${escuela.runtimeType}'); // String
  print('Tipo de anio: ${anio.runtimeType}'); // int
  print('Tipo de promedio: ${promedio.runtimeType}'); // double
  print('Tipo de materias: ${materias.runtimeType}'); // List<String>
  print('Tipo de imagen: ${imagen.runtimeType}'); // Map<String, Object>
}
