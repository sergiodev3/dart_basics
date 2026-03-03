// ============================================
// EJERCICIOS PRÁCTICOS - CLASES Y OBJETOS
// ============================================

/*
 * INSTRUCCIONES:
 * Completa cada ejercicio siguiendo los comentarios.
 * Puedes ejecutar este archivo para probar tus soluciones.
 */

// ======================================
// EJERCICIO 1: Clase Estudiante
// ======================================
// Crea una clase Estudiante con:
// - Propiedades: nombre, matricula, carrera, promedio
// - Constructor que inicialice todas las propiedades
// - Método esAprobado() que retorne true si promedio >= 6
// - Método mostrarInfo() que imprima toda la información

class Estudiante {
  // Tu código aquí
}

// ======================================
// EJERCICIO 2: Clase Producto
// ======================================
// Crea una clase Producto con:
// - Propiedades: nombre, precio, stock
// - Constructor con parámetros nombrados
// - Método vender(cantidad) que reduzca el stock si hay suficiente
// - Método reabastecer(cantidad) que aumente el stock
// - Método calcularValorInventario() que retorne precio * stock

class Producto {
  // Tu código aquí
}

// ======================================
// EJERCICIO 3: Clase Circulo
// ======================================
// Crea una clase Circulo con:
// - Propiedad: radio
// - Constructor
// - Método calcularArea() que retorne PI * radio^2
// - Método calcularPerimetro() que retorne 2 * PI * radio
// - Getter diametro que retorne radio * 2

class Circulo {
  // Tu código aquí
}

// ======================================
// EJERCICIO 4: Herencia - Sistema de Transporte
// ======================================
// Crea una clase base Transporte con propiedades marca y velocidadMaxima
// Crea dos clases hijas:
// - Bicicleta: agrega propiedad numMarchas
// - Motocicleta: agrega propiedad cilindrada
// Ambas deben sobreescribir un método mostrarInfo()

class Transporte {
  // Tu código aquí
}

class Bicicleta extends Transporte {
  // Tu código aquí
}

class Motocicleta extends Transporte {
  // Tu código aquí
}

// ======================================
// EJERCICIO 5: Sistema de Empleados
// ======================================
// Crea una clase Empleado con:
// - Propiedades: nombre, salarioMensual, departamento
// - Constructor
// - Método calcularSalarioAnual()
// - Método aumentarSalario(porcentaje) que incremente el salario
// Crea una clase EmpleadoConBono que extienda Empleado:
// - Agrega propiedad bonoAnual
// - Sobreescribe calcularSalarioAnual() para incluir el bono

class Empleado {
  // Tu código aquí
}

class EmpleadoConBono extends Empleado {
  // Tu código aquí
}

// ======================================
// EJERCICIO 6: Clase abstracta Figura
// ======================================
// Crea una clase abstracta Figura con método abstracto calcularArea()
// Crea clases Triangulo y Rectangulo que extiendan Figura
// - Triangulo: propiedades base, altura
// - Rectangulo: propiedades ancho, alto

abstract class Figura {
  // Tu código aquí
}

class Triangulo extends Figura {
  // Tu código aquí
}

class Rectangulo extends Figura {
  // Tu código aquí
}

// ======================================
// EJERCICIO 7: Sistema de Banco
// ======================================
// Crea una clase CuentaBancaria con:
// - Propiedades: numeroCuenta, titular, saldo (privado)
// - Constructor
// - Métodos: depositar, retirar, consultarSaldo
// Crea una clase CuentaAhorro que extienda CuentaBancaria:
// - Agrega propiedad tasaInteres
// - Método aplicarInteres() que agregue interés al saldo

class CuentaBancaria {
  // Tu código aquí
}

class CuentaAhorro extends CuentaBancaria {
  // Tu código aquí
}

// ======================================
// EJERCICIO 8: Gestión de Tareas
// ======================================
// Crea una clase Tarea con:
// - Propiedades: titulo, descripcion, completada (bool)
// - Constructor
// - Métodos: completar(), mostrarEstado()
// Crea una clase ListaTareas con:
// - Propiedad: lista de tareas
// - Métodos: agregarTarea, completarTarea, mostrarTodas, contarPendientes

class Tarea {
  // Tu código aquí
}

class ListaTareas {
  // Tu código aquí
}

// ======================================
// MAIN - PRUEBA TUS SOLUCIONES
// ======================================
void main() {
  print('🎯 PRUEBA TUS EJERCICIOS AQUÍ\n');
  
  // Ejemplo de cómo probar:
  /*
  print('=== EJERCICIO 1: Estudiante ===');
  Estudiante est = Estudiante('Juan', '12345', 'Informática', 8.5);
  est.mostrarInfo();
  print('¿Aprobado? ${est.esAprobado()}');
  */
  
  // Descomenta y completa las pruebas para cada ejercicio
  
  print('\n✅ ¡Completa los ejercicios y pruébalos aquí!');
}

// ======================================
// SOLUCIONES COMENTADAS (No hacer trampa!)
// ======================================
/*

// SOLUCIÓN EJERCICIO 1:
class Estudiante {
  String nombre;
  String matricula;
  String carrera;
  double promedio;
  
  Estudiante(this.nombre, this.matricula, this.carrera, this.promedio);
  
  bool esAprobado() {
    return promedio >= 6.0;
  }
  
  void mostrarInfo() {
    print('Estudiante: $nombre');
    print('Matrícula: $matricula');
    print('Carrera: $carrera');
    print('Promedio: $promedio');
  }
}

// SOLUCIÓN EJERCICIO 2:
class Producto {
  String nombre;
  double precio;
  int stock;
  
  Producto({required this.nombre, required this.precio, required this.stock});
  
  bool vender(int cantidad) {
    if (cantidad <= stock) {
      stock -= cantidad;
      print('Vendido: $cantidad unidades de $nombre');
      return true;
    } else {
      print('Stock insuficiente');
      return false;
    }
  }
  
  void reabastecer(int cantidad) {
    stock += cantidad;
    print('Reabastecido: $cantidad unidades de $nombre');
  }
  
  double calcularValorInventario() {
    return precio * stock;
  }
}

// ... (continúa con las demás soluciones)

*/
