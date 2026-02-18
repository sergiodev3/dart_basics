/// Ejemplo 1: Entrada de usuario básica
///
/// Demuestra cómo leer entrada del usuario desde la consola.
/// Usa stdin.readLineSync() para obtener texto del usuario.

import 'dart:io';

void main() {
  mostrarSaludo();
}

/// Solicita el nombre del usuario y muestra un saludo personalizado
void mostrarSaludo() {
  print('┌──────────────────────────────────────┐');
  print('│  PROGRAMA DE SALUDO INTERACTIVO  │');
  print('└──────────────────────────────────────┘\n');

  // Solicitar nombre
  stdout.write('👤 ¿Cómo te llamas?: ');
  var nombre = stdin.readLineSync();

  // Validar entrada
  if (nombre == null || nombre.trim().isEmpty) {
    print('\n❌ No ingresaste ningún nombre.');
    return;
  }

  // Limpiar espacios
  nombre = nombre.trim();

  // Mostrar saludo
  print('\n┌──────────────────────────────────┐');
  print('│  👋 ¡Hola, $nombre!         │');
  print('│  Bienvenido a Dart      │');
  print('└──────────────────────────────────┘');

  // Información adicional
  print('\n📊 Estadísticas:');
  print('  • Longitud del nombre: ${nombre.length} caracteres');
  print('  • Primera letra: ${nombre[0].toUpperCase()}');
  print('  • Última letra: ${nombre[nombre.length - 1].toUpperCase()}');
}
