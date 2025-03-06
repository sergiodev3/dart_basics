import 'dart:async';

// Función simulada que obtiene un nombre de forma asíncrona
Future<String> obtenerNombre() async {
  await Future.delayed(
      Duration(seconds: 2)); // Simular una espera de 2 segundos
  return 'Juan';
}

void main() {
  late String nombre;

  // Simulamos una operación asíncrona que obtiene el nombre después de un tiempo
  Future<void> obtenerYMostrarNombre() async {
    nombre = await obtenerNombre(); // Inicialización diferida
    print(nombre); // Utilizar el nombre después de inicializarlo
  }

  obtenerYMostrarNombre(); // Llamamos a la función asíncrona para obtener y mostrar el nombre
}
