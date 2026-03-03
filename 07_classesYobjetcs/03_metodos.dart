// ============================================
// MÉTODOS EN CLASES
// ============================================

// Los métodos son funciones que pertenecen a una clase
// Definen el comportamiento de los objetos

class Calculadora {
  // Método simple que suma dos números
  int sumar(int a, int b) {
    return a + b;
  }
  
  // Método con expresión de flecha (arrow function)
  int restar(int a, int b) => a - b;
  
  // Método que no retorna nada (void)
  void mostrarResultado(int resultado) {
    print('El resultado es: $resultado');
  }
}

class CuentaBancaria {
  String titular;
  double saldo;
  
  CuentaBancaria(this.titular, this.saldo);
  
  // Método para depositar dinero
  void depositar(double cantidad) {
    if (cantidad > 0) {
      saldo += cantidad;
      print('Depósito de \$${cantidad}. Nuevo saldo: \$${saldo}');
    } else {
      print('La cantidad debe ser positiva');
    }
  }
  
  // Método para retirar dinero
  bool retirar(double cantidad) {
    if (cantidad > saldo) {
      print('Fondos insuficientes');
      return false;
    } else if (cantidad <= 0) {
      print('La cantidad debe ser positiva');
      return false;
    } else {
      saldo -= cantidad;
      print('Retiro de \$${cantidad}. Nuevo saldo: \$${saldo}');
      return true;
    }
  }
  
  // Método para consultar saldo
  void consultarSaldo() {
    print('Titular: $titular');
    print('Saldo actual: \$${saldo}');
  }
  
  // Método que retorna un valor
  double obtenerSaldo() {
    return saldo;
  }
}

class Rectangulo {
  double ancho;
  double alto;
  
  Rectangulo(this.ancho, this.alto);
  
  // Método para calcular área
  double calcularArea() {
    return ancho * alto;
  }
  
  // Método para calcular perímetro
  double calcularPerimetro() {
    return 2 * (ancho + alto);
  }
  
  // Método para cambiar dimensiones
  void redimensionar(double nuevoAncho, double nuevoAlto) {
    ancho = nuevoAncho;
    alto = nuevoAlto;
    print('Redimensionado a ${ancho}x${alto}');
  }
  
  // Método que usa otros métodos de la misma clase
  void mostrarInfo() {
    print('--- Información del Rectángulo ---');
    print('Dimensiones: ${ancho} x ${alto}');
    print('Área: ${calcularArea()}');
    print('Perímetro: ${calcularPerimetro()}');
  }
}

class Persona {
  String nombre;
  int edad;
  
  Persona(this.nombre, this.edad);
  
  // Método con lógica condicional
  String clasificarPorEdad() {
    if (edad < 18) {
      return 'Menor de edad';
    } else if (edad < 65) {
      return 'Adulto';
    } else {
      return 'Adulto mayor';
    }
  }
  
  // Método para saludar
  void saludar() {
    print('Hola, mi nombre es $nombre y tengo $edad años');
  }
  
  // Método con parámetro
  void cumplirAnios() {
    edad++;
    print('¡Feliz cumpleaños $nombre! Ahora tienes $edad años');
  }
  
  // Método que retorna bool
  bool esMayorDeEdad() {
    return edad >= 18;
  }
}

// Getters y Setters
class Temperatura {
  double _celsius = 0; // _ indica que es privado
  
  // Getter: obtener temperatura en Fahrenheit
  double get fahrenheit => (_celsius * 9 / 5) + 32;
  
  // Setter: establecer temperatura en Fahrenheit
  set fahrenheit(double fahrenheit) {
    _celsius = (fahrenheit - 32) * 5 / 9;
  }
  
  // Getter para celsius
  double get celsius => _celsius;
  
  // Setter para celsius
  set celsius(double celsius) {
    _celsius = celsius;
  }
  
  void mostrar() {
    print('Temperatura: ${_celsius.toStringAsFixed(2)}°C = ${fahrenheit.toStringAsFixed(2)}°F');
  }
}

void main() {
  print('=== EJEMPLO 1: Métodos básicos ===');
  Calculadora calc = Calculadora();
  
  int suma = calc.sumar(10, 5);
  int resta = calc.restar(10, 5);
  
  calc.mostrarResultado(suma);
  calc.mostrarResultado(resta);
  
  print('\n=== EJEMPLO 2: Cuenta bancaria ===');
  CuentaBancaria cuenta = CuentaBancaria('Juan Pérez', 1000.0);
  
  cuenta.consultarSaldo();
  cuenta.depositar(500);
  cuenta.retirar(200);
  cuenta.retirar(2000); // Intenta retirar más de lo que hay
  
  double saldoActual = cuenta.obtenerSaldo();
  print('Saldo final: \$${saldoActual}');
  
  print('\n=== EJEMPLO 3: Rectángulo ===');
  Rectangulo rect = Rectangulo(5, 10);
  
  rect.mostrarInfo();
  rect.redimensionar(8, 12);
  rect.mostrarInfo();
  
  print('\n=== EJEMPLO 4: Persona ===');
  Persona persona = Persona('María', 17);
  
  persona.saludar();
  print('Clasificación: ${persona.clasificarPorEdad()}');
  print('¿Es mayor de edad? ${persona.esMayorDeEdad()}');
  
  persona.cumplirAnios();
  print('Clasificación: ${persona.clasificarPorEdad()}');
  print('¿Es mayor de edad? ${persona.esMayorDeEdad()}');
  
  print('\n=== EJEMPLO 5: Getters y Setters ===');
  Temperatura temp = Temperatura();
  
  temp.celsius = 25;
  temp.mostrar();
  
  temp.fahrenheit = 86;
  temp.mostrar();
  
  print('Temperatura en Celsius: ${temp.celsius}');
  print('Temperatura en Fahrenheit: ${temp.fahrenheit}');
}
