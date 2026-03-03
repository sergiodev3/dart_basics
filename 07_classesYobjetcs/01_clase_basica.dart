// ============================================
// CLASES Y OBJETOS - EJEMPLO BÁSICO
// ============================================

// Una clase es un "molde" para crear objetos
// Define las propiedades (atributos) y comportamientos (métodos)

class Persona {
  // Propiedades (atributos)
  String nombre = '';
  int edad = 0;
  String ciudad = '';
}

void main() {
  print('=== EJEMPLO 1: Crear un objeto básico ===');
  
  // Crear un objeto (instancia) de la clase Persona
  Persona persona1 = Persona();
  
  // Asignar valores a las propiedades
  persona1.nombre = 'Juan';
  persona1.edad = 25;
  persona1.ciudad = 'Escobedo';
  
  // Acceder a las propiedades
  print('Nombre: ${persona1.nombre}');
  print('Edad: ${persona1.edad}');
  print('Ciudad: ${persona1.ciudad}');
  
  print('\n=== EJEMPLO 2: Crear múltiples objetos ===');
  
  // Podemos crear varios objetos de la misma clase
  Persona persona2 = Persona();
  persona2.nombre = 'María';
  persona2.edad = 30;
  persona2.ciudad = 'Barcelona';
  
Persona persona3 = Persona();
  persona3.nombre = 'Carlos';
  persona3.edad = 22;
  persona3.ciudad = 'Valencia';
  
  print('Persona 2: ${persona2.nombre}, ${persona2.edad} años, ${persona2.ciudad}');
  print('Persona 3: ${persona3.nombre}, ${persona3.edad} años, ${persona3.ciudad}');
  
  print('\n=== EJEMPLO 3: Clase con nullable properties ===');
  
  // También podemos definir propiedades que pueden ser null
  Coche coche1 = Coche();
  coche1.marca = 'Toyota';
  coche1.modelo = 'Corolla';
  coche1.anio = 2020;
  
  print('Coche: ${coche1.marca} ${coche1.modelo} (${coche1.anio})');
}

// Clase con propiedades nullable
class Coche {
  String? marca;
  String? modelo;
  int? anio;
}
