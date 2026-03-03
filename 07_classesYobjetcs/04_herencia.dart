// ============================================
// HERENCIA EN DART (EXTEND A CLASS)
// ============================================

// La herencia permite crear una clase basada en otra clase existente
// La clase hija (subclase) hereda propiedades y métodos de la clase padre (superclase)

// CLASE BASE (PADRE/SUPERCLASE)
class Animal {
  String nombre;
  int edad;
  
  Animal(this.nombre, this.edad);
  
  // Método que será heredado
  void comer() {
    print('$nombre está comiendo');
  }
  
  void dormir() {
    print('$nombre está durmiendo');
  }
  
  // Método que puede ser sobreescrito
  void hacerSonido() {
    print('$nombre hace un sonido');
  }
  
  void mostrarInfo() {
    print('Animal: $nombre, Edad: $edad años');
  }
}

// CLASE HIJA 1 - Hereda de Animal
class Perro extends Animal {
  String raza;
  
  // Constructor que llama al constructor del padre con super
  Perro(String nombre, int edad, this.raza) : super(nombre, edad);
  
  // Sobreescribir (override) un método del padre
  @override
  void hacerSonido() {
    print('$nombre dice: ¡Guau guau!');
  }
  
  // Método propio de la clase Perro
  void jugarConPelota() {
    print('$nombre está jugando con la pelota');
  }
  
  @override
  void mostrarInfo() {
    super.mostrarInfo(); // Llama al método del padre
    print('Raza: $raza');
  }
}

// CLASE HIJA 2 - Hereda de Animal
class Gato extends Animal {
  String color;
  
  Gato(String nombre, int edad, this.color) : super(nombre, edad);
  
  @override
  void hacerSonido() {
    print('$nombre dice: ¡Miau miau!');
  }
  
  // Método propio de la clase Gato
  void rascarMuebles() {
    print('$nombre está rascando los muebles');
  }
  
  @override
  void mostrarInfo() {
    super.mostrarInfo();
    print('Color: $color');
  }
}

// EJEMPLO 2: HERENCIA MULTINIVEL
class Vehiculo {
  String marca;
  int anio;
  
  Vehiculo(this.marca, this.anio);
  
  void arrancar() {
    print('El vehículo $marca está arrancando');
  }
  
  void detener() {
    print('El vehículo $marca se ha detenido');
  }
}

// Coche hereda de Vehiculo
class Coche extends Vehiculo {
  int numeroPuertas;
  
  Coche(String marca, int anio, this.numeroPuertas) : super(marca, anio);
  
  void abrirMaletero() {
    print('Abriendo el maletero del $marca');
  }
}

// CocheElectrico hereda de Coche (herencia multinivel)
class CocheElectrico extends Coche {
  int autonomiaKm;
  
  CocheElectrico(String marca, int anio, int numeroPuertas, this.autonomiaKm)
      : super(marca, anio, numeroPuertas);
  
  void cargarBateria() {
    print('Cargando batería del $marca (autonomía: $autonomiaKm km)');
  }
  
  @override
  void arrancar() {
    print('El coche eléctrico $marca se enciende silenciosamente');
  }
}

// EJEMPLO 3: CLASE BASE CON MÉTODOS ABSTRACTOS
abstract class Figura {
  String nombre;
  
  Figura(this.nombre);
  
  // Método que debe ser implementado por las clases hijas
  double calcularArea();
  
  // Método con implementación por defecto
  void describir() {
    print('Esta es una figura: $nombre');
    print('Área: ${calcularArea()}');
  }
}

class Circulo extends Figura {
  double radio;
  
  Circulo(this.radio) : super('Círculo');
  
  @override
  double calcularArea() {
    return 3.14159 * radio * radio;
  }
}

class Cuadrado extends Figura {
  double lado;
  
  Cuadrado(this.lado) : super('Cuadrado');
  
  @override
  double calcularArea() {
    return lado * lado;
  }
}

// EJEMPLO 4: PERSONA Y EMPLEADO
class Persona {
  String nombre;
  int edad;
  String direccion;
  
  Persona(this.nombre, this.edad, this.direccion);
  
  void presentarse() {
    print('Hola, soy $nombre y tengo $edad años');
  }
}

class Empleado extends Persona {
  String empresa;
  double salario;
  String puesto;
  
  Empleado(
    String nombre,
    int edad,
    String direccion,
    this.empresa,
    this.salario,
    this.puesto,
  ) : super(nombre, edad, direccion);
  
  @override
  void presentarse() {
    super.presentarse();
    print('Trabajo en $empresa como $puesto');
  }
  
  void trabajar() {
    print('$nombre está trabajando en $empresa');
  }
  
  void calcularSalarioAnual() {
    double salarioAnual = salario * 12;
    print('Salario anual de $nombre: \$${salarioAnual}');
  }
}

class Estudiante extends Persona {
  String universidad;
  String carrera;
  double promedio;
  
  Estudiante(
    String nombre,
    int edad,
    String direccion,
    this.universidad,
    this.carrera,
    this.promedio,
  ) : super(nombre, edad, direccion);
  
  @override
  void presentarse() {
    super.presentarse();
    print('Estudio $carrera en $universidad');
  }
  
  void estudiar() {
    print('$nombre está estudiando');
  }
  
  bool estaAprobado() {
    return promedio >= 6.0;
  }
}

void main() {
  print('=== EJEMPLO 1: Herencia básica con animales ===\n');
  
  Animal animal = Animal('Animal genérico', 5);
  animal.mostrarInfo();
  animal.hacerSonido();
  animal.comer();
  
  print('\n--- Perro ---');
  Perro perro = Perro('Max', 3, 'Labrador');
  perro.mostrarInfo();
  perro.hacerSonido(); // Método sobreescrito
  perro.comer(); // Método heredado
  perro.jugarConPelota(); // Método propio
  
  print('\n--- Gato ---');
  Gato gato = Gato('Mimi', 2, 'Naranja');
  gato.mostrarInfo();
  gato.hacerSonido(); // Método sobreescrito
  gato.dormir(); // Método heredado
  gato.rascarMuebles(); // Método propio
  
  print('\n=== EJEMPLO 2: Herencia multinivel ===\n');
  
  CocheElectrico tesla = CocheElectrico('Tesla', 2023, 4, 500);
  tesla.arrancar(); // Método sobreescrito en CocheElectrico
  tesla.abrirMaletero(); // Método heredado de Coche
  tesla.cargarBateria(); // Método propio
  tesla.detener(); // Método heredado de Vehiculo
  
  print('\n=== EJEMPLO 3: Clase abstracta ===\n');
  
  Circulo circulo = Circulo(5);
  circulo.describir();
  
  print('');
  
  Cuadrado cuadrado = Cuadrado(4);
  cuadrado.describir();
  
  print('\n=== EJEMPLO 4: Persona, Empleado y Estudiante ===\n');
  
  Empleado empleado = Empleado(
    'Carlos García',
    30,
    'Calle Principal 123',
    'TechCorp',
    3500.0,
    'Desarrollador',
  );
  
  print('--- Empleado ---');
  empleado.presentarse();
  empleado.trabajar();
  empleado.calcularSalarioAnual();
  
  print('\n--- Estudiante ---');
  Estudiante estudiante = Estudiante(
    'Ana López',
    22,
    'Av. Universidad 456',
    'UNAM',
    'Ingeniería en Computación',
    8.5,
  );
  
  estudiante.presentarse();
  estudiante.estudiar();
  print('¿Está aprobado? ${estudiante.estaAprobado()}');
  
  print('\n=== Polimorfismo ===\n');
  // Podemos usar una referencia del tipo padre para objetos hijos
  List<Animal> animales = [
    Perro('Bobby', 4, 'Pastor Alemán'),
    Gato('Luna', 1, 'Blanco'),
    Animal('Tortuga', 10),
  ];
  
  for (var animal in animales) {
    animal.hacerSonido();
  }
}
