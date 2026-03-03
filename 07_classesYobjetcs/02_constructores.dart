// ============================================
// CONSTRUCTORES EN DART
// ============================================

// Un constructor es un método especial que se ejecuta
// cuando creamos un nuevo objeto de la clase

// 1. CONSTRUCTOR SIMPLE
class Persona {
  String nombre;
  int edad;
  
  // Constructor simple - se ejecuta al crear el objeto
  Persona(this.nombre, this.edad) {
    print('Constructor ejecutado: Creando persona $nombre');
  }
}

// 2. CONSTRUCTOR CON PARÁMETROS OPCIONALES
class Producto {
  String nombre;
  double precio;
  String? descripcion;
  
  // Constructor con parámetro opcional usando []
  Producto(this.nombre, this.precio, [this.descripcion]);
}

// 3. CONSTRUCTOR CON PARÁMETROS NOMBRADOS
class Coche {
  String marca;
  String modelo;
  int anio;
  String? color;
  
  // Constructor con parámetros nombrados usando {}
  // required indica que es obligatorio
  Coche({
    required this.marca,
    required this.modelo,
    required this.anio,
    this.color = 'Blanco', // Valor por defecto
  });
}

// 4. CONSTRUCTORES NOMBRADOS (Named Constructors)
class Punto {
  double x;
  double y;
  
  // Constructor principal
  Punto(this.x, this.y);
  
  // Constructor nombrado: crea un punto en el origen
  Punto.origen() : x = 0, y = 0;
  
  // Constructor nombrado: crea un punto desde coordenadas polares
  Punto.desdePolar(double radio, double angulo)
      : x = radio * cos(angulo),
        y = radio * sin(angulo);
  
  void mostrar() {
    print('Punto: ($x, $y)');
  }
}

// Funciones auxiliares para coordenadas polares
double cos(double angulo) => angulo; // Simplificado para el ejemplo
double sin(double angulo) => angulo; // Simplificado para el ejemplo

// 5. CONSTRUCTOR CON INICIALIZACIÓN
class Rectangulo {
  double ancho;
  double alto;
  late double area; // late permite inicializar después
  
  Rectangulo(this.ancho, this.alto) {
    area = ancho * alto; // Calculamos el área en el constructor
  }
}

// 6. CONSTRUCTOR CONSTANTE
class Configuracion {
  final String version;
  final int maxUsuarios;
  
  // Constructor constante - crea objetos inmutables en tiempo de compilación
  const Configuracion(this.version, this.maxUsuarios);
}

void main() {
  print('=== EJEMPLO 1: Constructor simple ===');
  Persona persona1 = Persona('Juan', 25);
  Persona persona2 = Persona('María', 30);
  
  print('${persona1.nombre} tiene ${persona1.edad} años');
  print('${persona2.nombre} tiene ${persona2.edad} años');
  
  print('\n=== EJEMPLO 2: Constructor con parámetros opcionales ===');
  Producto producto1 = Producto('Laptop', 999.99, 'Laptop gaming de alta gama');
  Producto producto2 = Producto('Mouse', 29.99); // Sin descripción
  
  print('${producto1.nombre}: \$${producto1.precio} - ${producto1.descripcion}');
  print('${producto2.nombre}: \$${producto2.precio} - ${producto2.descripcion}');
  
  print('\n=== EJEMPLO 3: Constructor con parámetros nombrados ===');
  Coche coche1 = Coche(
    marca: 'Toyota',
    modelo: 'Corolla',
    anio: 2020,
    color: 'Rojo',
  );
  
  Coche coche2 = Coche(
    marca: 'Honda',
    modelo: 'Civic',
    anio: 2021,
    // color tomará valor por defecto 'Blanco'
  );
  
  print('Coche 1: ${coche1.marca} ${coche1.modelo} ${coche1.anio} - ${coche1.color}');
  print('Coche 2: ${coche2.marca} ${coche2.modelo} ${coche2.anio} - ${coche2.color}');
  
  print('\n=== EJEMPLO 4: Constructores nombrados ===');
  Punto p1 = Punto(3, 4);
  Punto p2 = Punto.origen();
  Punto p3 = Punto.desdePolar(5, 0.5);
  
  print('Punto 1:');
  p1.mostrar();
  print('Punto 2 (origen):');
  p2.mostrar();
  print('Punto 3 (polar):');
  p3.mostrar();
  
  print('\n=== EJEMPLO 5: Constructor con inicialización ===');
  Rectangulo rect = Rectangulo(5, 10);
  print('Rectángulo: ${rect.ancho} x ${rect.alto}');
  print('Área: ${rect.area}');
  
  print('\n=== EJEMPLO 6: Constructor constante ===');
  const config1 = Configuracion('1.0.0', 100);
  const config2 = Configuracion('1.0.0', 100);
  
  print('Config 1: v${config1.version}, Max: ${config1.maxUsuarios}');
  print('Config 2: v${config2.version}, Max: ${config2.maxUsuarios}');
  print('¿Son idénticas? ${identical(config1, config2)}'); // true!
}
