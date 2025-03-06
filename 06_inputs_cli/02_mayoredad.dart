import 'dart:io';

void main() {
  stdout.write('Ingresa tu edad: ');
  var edad = stdin.readLineSync();

  if (edad != null) {
    var edadin = int.parse(edad);
    if (edadin < 18) {
      print("Eres menor de edad, tu edad es: $edadin");
    } else {
      print("Eres meyor de edad, tu edad es: $edadin");
    }
  }
}
