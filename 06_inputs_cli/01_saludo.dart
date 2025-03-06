import 'dart:io';

void main() {
  Saludo();
}

void Saludo() {
  print("Programa que envia Saludo");
  print("Escribe tu nombre: ");
  var nombre = stdin.readLineSync();
  print("Hola ${nombre}");
}
