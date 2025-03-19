void main() {
  try {
    throw FormatException("Formato incorrecto");
  } on FormatException catch (e) {
    print("Error de formato: $e");
  } catch (e) {
    print("Otro error: $e");
  }
}
