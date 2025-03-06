void main() {
  //var mivar = 'Hola';
  //mivar = 42;
  // dynamic variable_dinamica = 'Hola';
  // variable_dinamica = 42;

// Ejemplo de conversión de tipo
//utilizando el operador 'as' con strings
  dynamic valor = 'Hola';
  String cadena = valor as String;
  print(cadena); // Imprimirá 'Hola'

  // Ejemplo de uso del operador 'is'
  //para verificar el tipo de un objeto String
  dynamic valor2 = 'hola';
  if (valor2 is String) {
    print('El valor es una cadena de texto');
  } else {
    print('El valor no es una cadena de texto');
  }

  // Ejemplo de uso del operador 'is!'
  //  para verificar si un objeto no es una cadena de texto
  dynamic valor3 = 42;
  if (valor3 is! String) {
    print('El valor no es una cadena de texto');
  } else {
    print('El valor es una cadena de texto');
  }
}
