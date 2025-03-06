import 'dart:io';

void main() {
  print('Calculadora Básica');
  print('Ingrese el primer número:');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Ingrese el operador (+, -, *, /):');
  String operator = stdin.readLineSync()!;

  print('Ingrese el segundo número:');
  double num2 = double.parse(stdin.readLineSync()!);

  double result;
  switch (operator) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        print('Error: No se puede dividir por cero.');
        return;
      }
      break;
    default:
      print('Error: Operador no válido.');
      return;
  }

  print('El resultado de la operación es: $result');
}
