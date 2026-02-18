/// Ejemplo 5.1: Final en clases y objetos
///
/// Las propiedades 'final' en clases deben inicializarse en el constructor.
/// Una vez asignadas, no pueden modificarse.

/// Clase que representa una persona con datos inmutables
class Persona {
  final String nombre;
  final int edad;

  // Constructor: inicializa los campos finales
  Persona(this.nombre, this.edad);

  // Método para mostrar información
  void mostrarInfo() {
    print('Nombre: $nombre, Edad: $edad años');
  }
}

void main() {
  print('=== Final en Clases ===\n');

  // Crear instancia de Persona
  final persona1 = Persona('Ana Martínez', 25);
  persona1.mostrarInfo();

  // ❌ Error: Los campos finales no se pueden modificar
  // persona1.nombre = 'Carlos';
  // persona1.edad = 30;

  // ❌ Error: La variable final no se puede reasignar
  // persona1 = Persona('Luis', 30);

  print('\n=== Variables Final Simples ===\n');

  // Variable final simple
  final saludo = '¡Hola!';
  print('Saludo: $saludo');

  // ❌ Error: No se puede reasignar
  // saludo = 'Adiós';

  // Crear más personas
  final persona2 = Persona('Pedro López', 30);
  final persona3 = Persona('María Gómez', 22);

  print('\nLista de personas:');
  persona2.mostrarInfo();
  persona3.mostrarInfo();
}
