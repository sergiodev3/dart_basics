/// Ejercicio 7: Práctica de operadores
///
/// Ejercicios prácticos usando operadores aritméticos.

void main() {
  print('=== EJERCICIOS DE OPERADORES ===\n');

  // Ejercicio 1: Cálculo de IMC (Indice de Masa Corporal)
  print('--- Ejercicio 1: IMC ---');
  double peso = 68.5; // kilogramos
  double altura = 1.75; // metros
  double imc = peso / (altura * altura);

  print('Peso: $peso kg');
  print('Altura: $altura m');
  print('IMC: ${imc.toStringAsFixed(2)}');

  // Interpretación del IMC
  String interpretacion;
  if (imc < 18.5) {
    interpretacion = 'Bajo peso';
  } else if (imc < 25) {
    interpretacion = 'Peso normal';
  } else if (imc < 30) {
    interpretacion = 'Sobrepeso';
  } else {
    interpretacion = 'Obesidad';
  }
  print('Interpretación: $interpretacion\n');

  // Ejercicio 2: Área de un rectángulo
  print('--- Ejercicio 2: Área del rectángulo ---');
  double ancho = 8.5;
  double alto = 12.0;
  double area = ancho * alto;
  double perimetro = 2 * (ancho + alto);

  print('Ancho: $ancho unidades');
  print('Alto: $alto unidades');
  print('Área: ${area.toStringAsFixed(2)} unidades²');
  print('Perímetro: ${perimetro.toStringAsFixed(2)} unidades\n');

  // Ejercicio 3: Cálculo de precio total con descuento
  print('--- Ejercicio 3: Precio con descuento ---');
  double precioUnitario = 150.0;
  int cantidad = 5;
  double descuento = 0.15; // 15%

  double subtotal = precioUnitario * cantidad;
  double montoDescuento = subtotal * descuento;
  double total = subtotal - montoDescuento;

  print('Precio unitario: \$$precioUnitario');
  print('Cantidad: $cantidad unidades');
  print('Subtotal: \$$subtotal');
  print('Descuento (15%): -\$$montoDescuento');
  print('Total a pagar: \$${total.toStringAsFixed(2)}');
}
