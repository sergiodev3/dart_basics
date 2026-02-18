/// Ejemplo 4: Variables 'late' con operaciones asíncronas
///
/// Demuestra el uso de 'late' con Future y async/await.
/// Útil cuando el valor depende de operaciones asíncronas.

import 'dart:async';

void main() {
  print('=== Ejemplo Asíncrono con Late ===');
  print('Esperando datos...');

  // Llamar función asíncrona
  obtenerYMostrarInformacion();

  print('El programa continúa mientras espera...');
}

/// Obtiene y muestra información de forma asíncrona
Future<void> obtenerYMostrarInformacion() async {
  late String nombre;
  late int edad;

  // Simular llamadas a una API o base de datos
  nombre = await obtenerNombre();
  edad = await obtenerEdad();

  print('\n=== Datos Recibidos ===');
  print('Nombre: $nombre');
  print('Edad: $edad años');
}

/// Simula una petición asíncrona para obtener un nombre
Future<String> obtenerNombre() async {
  await Future.delayed(Duration(seconds: 1));
  return 'Ana García';
}

/// Simula una petición asíncrona para obtener edad
Future<int> obtenerEdad() async {
  await Future.delayed(Duration(seconds: 1));
  return 25;
}
