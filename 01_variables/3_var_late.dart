/// Ejemplo 3: Palabra clave 'late'
///
/// 'late' permite declarar variables que se inicializarán después.
/// Útil cuando no puedes inicializar en la declaración pero garantizas
/// que tendrá un valor antes de usarse.

// Variable que se inicializará después
late String automovil;

void main() {
  // Inicialización diferida
  automovil = 'Honda Civic';

  print('=== Variables Late ===');
  print('Automóvil: $automovil');

  // Ejemplo adicional con late
  late String mensaje;
  mensaje = obtenerMensaje();
  print('Mensaje: $mensaje');
}

/// Función auxiliar que simula obtener un valor
String obtenerMensaje() {
  return '¡Hola desde una función!';
}
