void main() {
  try {
    int resultado = 10 ~/ 0; // Esto causa un error (división por cero)
    print(resultado);
  } catch (e) {
    print("Ocurrió un error: $e"); // Captura y muestra el error
  }
}
