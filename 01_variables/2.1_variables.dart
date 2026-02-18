/// Ejemplo 2.1: Variables con tipos explícitos
///
/// Aunque Dart puede inferir tipos, también puedes declararlos explícitamente.
/// Esto mejora la legibilidad y previene errores.

void main() {
  // Variables con tipo explícito
  String nombre = 'Sergio Sánchez';
  int edad = 35;
  double altura = 1.75;
  List<String> pasatiempos = [
    'Leer',
    'Viajar',
    'Jugar baloncesto',
    'Programar',
  ];

  // Imprimir información personal
  print('=== Perfil Personal ===');
  print('Nombre: $nombre');
  print('Edad: $edad años');
  print('Altura: $altura m');

  // Demostrar operador condicional con diferentes valores
  bool esEstudiante = false;
  print('¿Es estudiante?: ${obtenerEstado(esEstudiante)}');
  print('Pasatiempos: ${pasatiempos.join(", ")}');

  // Ejemplo de operaciones
  print('\n=== Información Adicional ===');
  print('Número de pasatiempos: ${pasatiempos.length}');
  print('Primer pasatiempo: ${pasatiempos.first}');
}

/// Obtiene el estado como string (evita dead code en operador ternario)
String obtenerEstado(bool estado) => estado ? "Sí" : "No";
