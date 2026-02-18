/// Ejemplo 1.2: Bucle forEach
///
/// forEach es método de las colecciones para iterar sobre cada elemento.
/// Más conciso que el for tradicional cuando no necesitas el índice.

void main() {
  print('=== BUCLE FOREACH ===\n');

  // Ejemplo básico con lista de números
  print('--- Lista de números ---');
  List<int> numeros = [10, 20, 30, 40, 50];

  numeros.forEach((numero) {
    print('Número: $numero');
  });

  // Ejemplo con lista de strings
  print('\n--- Nombres de estudiantes ---');
  var estudiantes = ['Ana', 'Carlos', 'María', 'Pedro', 'Laura'];

  estudiantes.forEach((nombre) {
    print('✓ $nombre');
  });

  // Ejemplo: sumar elementos
  print('\n--- Suma de elementos ---');
  var calificaciones = [85, 92, 78, 95, 88];
  var suma = 0;

  calificaciones.forEach((calificacion) {
    suma += calificacion;
  });

  var promedio = suma / calificaciones.length;
  print('Calificaciones: $calificaciones');
  print('Suma total: $suma');
  print('Promedio: ${promedio.toStringAsFixed(2)}');

  // Ejemplo con mapa (Map)
  print('\n--- Iterar sobre un Map ---');
  var productos = {
    'Laptop': 15000,
    'Mouse': 250,
    'Teclado': 800,
    'Monitor': 3500,
  };

  productos.forEach((producto, precio) {
    print('$producto: \$$precio');
  });

  // Ejemplo con función flecha (sintaxis corta)
  print('\n--- Sintaxis corta con flecha ---');
  var colores = ['Rojo', 'Verde', 'Azul', 'Amarillo'];
  colores.forEach((color) => print('🎨 $color'));
}
