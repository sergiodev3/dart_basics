/// Ejemplo 7: Manejo de errores en aplicaciones reales
///
/// Este ejemplo demuestra el manejo de errores en escenarios prácticos
/// como llamadas HTTP, errores de conexión, etc.
///
/// NOTA: El código está comentado porque requiere el paquete 'http'.
/// Para usarlo: dart pub add http

void main() {
  print('=== MANEJO DE ERRORES PRÁCTICO ===\n');

  // Demostración sin dependencias externas
  simulacionManejoerrores();
}

/// Simula el manejo de errores sin dependencias externas
void simulacionManejoerrores() {
  print('--- Simulación de errores de red ---\n');

  // Simular diferentes escenarios
  simularPeticionHttp('https://api.ejemplo.com/datos', 200);
  simularPeticionHttp('https://api.ejemplo.com/datos', 404);
  simularPeticionHttp('https://api.ejemplo.com/datos', 500);
  simularPeticionHttp('sin-conexion', 0);
}

/// Simula una petición HTTP con diferentes códigos de estado
void simularPeticionHttp(String url, int codigoEstado) {
  print('\nPetición a: $url');

  try {
    // Simular errores de conexión
    if (codigoEstado == 0) {
      throw SimulacionSocketException(
        'No se pudo conectar al servidor. Verifica tu conexión a internet.',
      );
    }

    // Simular errores HTTP
    if (codigoEstado >= 400) {
      throw SimulacionHttpException(
        'Error del servidor',
        codigoEstado: codigoEstado,
      );
    }

    // Éxito
    print('✓ Conexión exitosa (código: $codigoEstado)');
    print('  Datos recibidos correctamente');
  } on SimulacionSocketException catch (e) {
    print('✗ Error de conexión:');
    print('  ${e.mensaje}');
    print('  Acción: Verifica tu internet e intenta nuevamente');
  } on SimulacionHttpException catch (e) {
    print('✗ Error HTTP ${e.codigoEstado}:');
    print('  ${e.mensaje}');

    if (e.codigoEstado == 404) {
      print('  Acción: Verifica la URL');
    } else if (e.codigoEstado >= 500) {
      print('  Acción: El servidor está experimentando problemas');
    }
  } catch (e) {
    print('✗ Error inesperado: $e');
    print('  Acción: Contacta al soporte técnico');
  }
}

// ========== CLASES DE EXCEPCIÓN PERSONALIZADAS ==========

/// Simula SocketException (errores de conexión)
class SimulacionSocketException implements Exception {
  final String mensaje;
  SimulacionSocketException(this.mensaje);

  @override
  String toString() => mensaje;
}

/// Simula HttpException (errores HTTP)
class SimulacionHttpException implements Exception {
  final String mensaje;
  final int codigoEstado;

  SimulacionHttpException(this.mensaje, {required this.codigoEstado});

  @override
  String toString() => '$mensaje (HTTP $codigoEstado)';
}

// ========== CÓDIGO COMENTADO PARA USO REAL ==========

// Para usar este código real, ejecuta: dart pub add http

// import 'dart:io';
// import 'package:http/http.dart' as http;
//
// /// Realiza una petición HTTP real con manejo de errores
// Future<void> realizarPeticionReal() async {
//   try {
//     var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
//     var respuesta = await http.get(url);
//
//     if (respuesta.statusCode == 200) {
//       print('✓ Conexión exitosa');
//       print('  Datos: ${respuesta.body.substring(0, 100)}...');
//     } else {
//       print('✗ Error del servidor: ${respuesta.statusCode}');
//     }
//     
//   } on SocketException catch (e) {
//     print('✗ Error de conexión:');
//     print('  No se pudo conectar al servidor');
//     print('  Verifica tu conexión a internet');
//     
//   } on HttpException catch (e) {
//     print('✗ Error HTTP: $e');
//     
//   } on FormatException catch (e) {
//     print('✗ Error de formato en la respuesta: $e');
//     
//   } catch (e) {
//     print('✗ Error inesperado: $e');
//   }
// }
