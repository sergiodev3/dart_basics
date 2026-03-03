/// Ejemplo 1: Bucle for
///
/// El bucle 'for' se usa cuando conoces el número de iteraciones.
/// Estructura: for (inicialización; condición; incremento) { ... }

void main() {
  print('=== BUCLE FOR ===\n');

  // Ejemplo básico: contar del 1 al 10
  print('--- Contar del 1 al 5 ---');
  for (var i = 1; i <= 10; i++) {
    print('Número: $i');
  }

  // Ejemplo con StringBuffer
  print('\n--- Construir cadena dinámicamente ---');
  var mensaje = StringBuffer('Dart es genial');
  for (var i = 0; i < 5; i++) {
    mensaje.write('!');
  }
  print(mensaje.toString());

  // Ejemplo: tabla de multiplicar
  print('\n--- Tabla de multiplicar del 7 ---');
  const numero = 7;
  for (var i = 1; i <= 10; i++) {
    print('$numero x $i = ${numero * i}');
  }

  // Ejemplo: iterar sobre una lista
  print('\n--- Iterar sobre una lista ---');
  var lenguajes = ['Dart', 'Python', 'JavaScript', 'Go', 'C++'];
  for (var i = 0; i < lenguajes.length; i++) {
    print('${i + 1}. ${lenguajes[i]}');
  }

  // Ejemplo: bucle inverso
  print('\n--- Cuenta regresiva ---');
  for (var i = 5; i >= 1; i--) {
    print('$i...');
  }
  print('¡Despegue! 🚀');
}
