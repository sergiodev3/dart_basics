import 'dart:io';

void main() {
  Tablam();
}

void Tablam() {
  stdout.write('Ingresa el numero que deseas la tabla: ');
  var numStr = stdin.readLineSync();
  var num = int.parse(numStr!);
  print("Tabla de multiplicar del número $num:");
  for (int i = 1; i <= 10; i++) {
    var resultado = num * i;
    print("$num x $i = $resultado");
  }
}
