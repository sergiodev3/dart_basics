/// Ejemplo 2: Lanzar excepciones con throw
///
/// 'throw' permite lanzar excepciones personalizadas cuando ocurre un error.
/// Las excepciones pueden ser capturadas con try-catch.

void main() {
  print('=== LANZAR EXCEPCIONES (THROW) ===\n');

  // Ejemplo 1: Verificar edad (error)
  print('--- Caso 1: Edad insuficiente ---');
  try {
    verificarEdad(13);
  } catch (e) {
    print('❌ Error capturado: $e');
  } finally {
    print('✓ Proceso finalizado\n');
  }

  // Ejemplo 2: Verificar edad (exitoso)
  print('--- Caso 2: Edad válida ---');
  try {
    verificarEdad(21);
  } catch (e) {
    print('❌ Error: $e');
  } finally {
    print('✓ Proceso finalizado\n');
  }

  // Ejemplo 3: Múltiples validaciones
  print('--- Caso 3: Validación múltiple ---');
  try {
    validarUsuario('', 'pass123');
  } catch (e) {
    print('❌ Error: $e');
  }
}

/// Verifica si la edad es válida para el acceso
void verificarEdad(int edad) {
  if (edad < 18) {
    throw Exception(
      'Acceso denegado: Debes ser mayor de 18 años (tienes $edad)',
    );
  }
  print('✓ Acceso permitido: Edad válida ($edad años)');
}

/// Valida las credenciales de un usuario
void validarUsuario(String usuario, String contrasenia) {
  if (usuario.isEmpty) {
    throw Exception('El nombre de usuario no puede estar vacío');
  }

  if (contrasenia.length < 6) {
    throw Exception('La contraseña debe tener al menos 6 caracteres');
  }

  print('✓ Usuario válido');
}
