/// Ejemplo 5: Palabra clave 'final'
///
/// 'final' crea variables que solo pueden asignarse una vez.
/// Se evalúan en tiempo de ejecución (runtime).
/// Ideal para valores que no cambian después de inicializarse.

// Variables finales globales (constantes de configuración)
final int edadMayoriaEdad = 18;
final String urlApi = 'https://api.ejemplo.com';
final int puertoServidor = 8080;

void main() {
  // Variable final local
  final nombre = 'Juan Pérez';

  // ❌ Error: no se puede reasignar
  // nombre = 'Pedro López';

  print('=== Variables Final ===');
  print('Nombre: $nombre');
  print('Edad de mayoría: $edadMayoriaEdad años');
  print('URL API: $urlApi');
  print('Puerto: $puertoServidor');

  // Final se evalúa en runtime
  final ahora = DateTime.now();
  print('\nFecha actual (runtime): $ahora');

  // Casos de uso recomendados:
  print('\n=== Casos de uso de final ===');
  print('✓ Configuraciones que no cambian');
  print('✓ Valores calculados en runtime');
  print('✓ Referencias a objetos inmutables');
}
