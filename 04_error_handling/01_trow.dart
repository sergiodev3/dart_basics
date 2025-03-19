void verificarEdad(int edad) {
  if (edad < 18) {
    throw Exception("Debes ser mayor de 18 años.");
  } else {
    print("Acceso permitido.");
  }
}

void main() {
  try {
    verificarEdad(16); // Esto lanzará una excepción
  } catch (e) {
    print("Error: $e"); // Captura y maneja el error
  } finally {
    print("Proceso finalizado.");
  }
}
