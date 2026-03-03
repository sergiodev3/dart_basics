// ============================================
// CLASES ABSTRACTAS CON @override
// ============================================

// Las clases abstractas no se pueden instanciar directamente
// Se usan como plantillas para otras clases
// Pueden tener métodos abstractos (sin implementación) y métodos concretos

// EJEMPLO 1: ANIMALES CON SONIDO
abstract class Animal {
  String nombre;
  int edad;

  Animal(this.nombre, this.edad);

  // Método abstracto: las clases hijas DEBEN implementarlo
  void hacerSonido();

  // Método abstracto: para moverse
  void moverse();

  // Método concreto: tiene implementación por defecto
  void dormir() {
    print('$nombre está durmiendo... zzz');
  }

  // Método concreto que puede ser sobrescrito
  void comer() {
    print('$nombre está comiendo');
  }

  void mostrarInfo() {
    print('Nombre: $nombre, Edad: $edad años');
  }
}

class Perro extends Animal {
  String raza;

  Perro(String nombre, int edad, this.raza) : super(nombre, edad);

  // @override obligatorio para métodos abstractos
  @override
  void hacerSonido() {
    print('$nombre dice: ¡Guau guau! 🐕');
  }

  @override
  void moverse() {
    print('$nombre corre en cuatro patas');
  }

  // @override opcional: sobrescribe método concreto
  @override
  void comer() {
    print('$nombre está comiendo croquetas');
  }
}

class Pajaro extends Animal {
  double envergaduraAlas;

  Pajaro(String nombre, int edad, this.envergaduraAlas) : super(nombre, edad);

  @override
  void hacerSonido() {
    print('$nombre canta: ¡Pío pío! 🐦');
  }

  @override
  void moverse() {
    print('$nombre vuela con sus alas de $envergaduraAlas cm');
  }

  // No sobrescribe comer(), usa la implementación por defecto
}

class Pez extends Animal {
  String tipoAgua;

  Pez(String nombre, int edad, this.tipoAgua) : super(nombre, edad);

  @override
  void hacerSonido() {
    print('$nombre hace burbujas... 🐠');
  }

  @override
  void moverse() {
    print('$nombre nada en agua $tipoAgua');
  }

  @override
  void dormir() {
    print('$nombre descansa con los ojos abiertos');
  }
}

// EJEMPLO 2: FORMAS GEOMÉTRICAS
abstract class Forma {
  String nombre;

  Forma(this.nombre);

  // Métodos abstractos que retornan valores
  double calcularArea();
  double calcularPerimetro();

  // Método concreto
  void describir() {
    print('\n--- $nombre ---');
    print('Área: ${calcularArea().toStringAsFixed(2)}');
    print('Perímetro: ${calcularPerimetro().toStringAsFixed(2)}');
  }

  @override
  String toString() {
    return '$nombre: Área=${calcularArea().toStringAsFixed(2)}, Perímetro=${calcularPerimetro().toStringAsFixed(2)}';
  }
}

class Circulo extends Forma {
  double radio;

  Circulo(this.radio) : super('Círculo');

  @override
  double calcularArea() {
    return 3.14159 * radio * radio;
  }

  @override
  double calcularPerimetro() {
    return 2 * 3.14159 * radio;
  }
}

class Rectangulo extends Forma {
  double base;
  double altura;

  Rectangulo(this.base, this.altura) : super('Rectángulo');

  @override
  double calcularArea() {
    return base * altura;
  }

  @override
  double calcularPerimetro() {
    return 2 * (base + altura);
  }
}

class Triangulo extends Forma {
  double lado1;
  double lado2;
  double lado3;
  double base;
  double altura;

  Triangulo(this.lado1, this.lado2, this.lado3, this.base, this.altura)
    : super('Triángulo');

  @override
  double calcularArea() {
    return (base * altura) / 2;
  }

  @override
  double calcularPerimetro() {
    return lado1 + lado2 + lado3;
  }
}

// EJEMPLO 3: VEHÍCULOS
abstract class Vehiculo {
  String marca;
  String modelo;

  Vehiculo(this.marca, this.modelo);

  // Métodos abstractos
  void arrancar();
  void detener();
  int obtenerNumeroRuedas();

  // Método concreto
  void mostrarInfo() {
    print('$marca $modelo - ${obtenerNumeroRuedas()} ruedas');
  }
}

class Coche extends Vehiculo {
  Coche(String marca, String modelo) : super(marca, modelo);

  @override
  void arrancar() {
    print('El coche $marca arranca con llave 🚗');
  }

  @override
  void detener() {
    print('El coche $marca se detiene con el freno');
  }

  @override
  int obtenerNumeroRuedas() {
    return 4;
  }
}

class Motocicleta extends Vehiculo {
  Motocicleta(String marca, String modelo) : super(marca, modelo);

  @override
  void arrancar() {
    print('La moto $marca arranca con botón 🏍️');
  }

  @override
  void detener() {
    print('La moto $marca frena con ambos frenos');
  }

  @override
  int obtenerNumeroRuedas() {
    return 2;
  }
}

void main() {
  print('╔════════════════════════════════════════╗');
  print('║   CLASES ABSTRACTAS CON @override     ║');
  print('╚════════════════════════════════════════╝\n');

  // EJEMPLO 1: Animales
  print('=== EJEMPLO 1: ANIMALES ===');

  List<Animal> animales = [
    Perro('Rex', 5, 'Labrador'),
    Pajaro('Tweety', 2, 15.5),
    Pez('Nemo', 1, 'salada'),
  ];

  for (var animal in animales) {
    print('\n• ${animal.nombre}:');
    animal.mostrarInfo();
    animal.hacerSonido();
    animal.moverse();
    animal.comer();
    animal.dormir();
  }

  // EJEMPLO 2: Formas geométricas
  print('\n\n=== EJEMPLO 2: FORMAS GEOMÉTRICAS ===');

  List<Forma> formas = [
    Circulo(5.0),
    Rectangulo(4.0, 6.0),
    Triangulo(3.0, 4.0, 5.0, 4.0, 3.0),
  ];

  for (var forma in formas) {
    forma.describir();
  }

  print('\n• Usando toString():');
  for (var forma in formas) {
    print(forma);
  }

  // EJEMPLO 3: Vehículos
  print('\n\n=== EJEMPLO 3: VEHÍCULOS ===\n');

  List<Vehiculo> vehiculos = [
    Coche('Toyota', 'Corolla'),
    Motocicleta('Yamaha', 'YZF-R3'),
  ];

  for (var vehiculo in vehiculos) {
    vehiculo.mostrarInfo();
    vehiculo.arrancar();
    vehiculo.detener();
    print('');
  }

  print('╔════════════════════════════════════════╗');
  print('║ PUNTOS CLAVE:                         ║');
  print('║ • Clases abstractas = plantillas      ║');
  print('║ • Métodos abstractos = obligatorios   ║');
  print('║ • @override = sobrescribir método     ║');
  print('║ • Polimorfismo = un tipo, muchas      ║');
  print('║   formas de comportamiento            ║');
  print('╚════════════════════════════════════════╝');
}
