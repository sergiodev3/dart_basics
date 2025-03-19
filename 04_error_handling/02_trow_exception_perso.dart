// Definimos una excepción personalizada
class EdadInvalidaException implements Exception {
  final String mensaje;
  EdadInvalidaException(this.mensaje);

  @override
  String toString() => "EdadInvalidaException: $mensaje";
}

// Función que lanza la excepción si la edad es inválida
void verificarEdad(int edad) {
  if (edad < 18) {
    throw EdadInvalidaException("La edad mínima es 18 años.");
  }
  print("Acceso permitido.");
}

void main() {
  try {
    verificarEdad(16);
  } catch (e) {
    print("Error capturado: $e");
  } finally {
    print("Proceso finalizado.");
  }
}
