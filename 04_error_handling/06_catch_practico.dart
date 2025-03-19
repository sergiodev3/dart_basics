// import 'dart:io'; // Para manejar errores de conexión
// import 'package:http/http.dart' as http; // Para hacer la petición HTTP

// void main() async {
//   try {
//     var url = Uri.parse("https://ejemplo.com/datos");
//     var respuesta = await http.get(url);

//     if (respuesta.statusCode == 200) {
//       print("Conexión exitosa: ${respuesta.body}");
//     } else {
//       print("Error en la respuesta del servidor: ${respuesta.statusCode}");
//     }
//   } on SocketException catch (e) {
//     print("No se pudo conectar al servidor. Verifica tu conexión a internet.");
//   } on HttpException catch (e) {
//     print("Error HTTP: $e");
//   } catch (e) {
//     print("Ocurrió un error inesperado: $e");
//   }
// }
