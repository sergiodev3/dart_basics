/// Ejercicio 7: Práctica con variables
///
/// Crea variables para almacenar información personal y muéstrala.

void main() {
  // Información personal
  var nombreCompleto = 'Sergio Homero Sánchez Castillo';
  var anioNacimiento = 1990;
  var edad = DateTime.now().year - anioNacimiento;
  var altura = 1.73;

  var pasatiempos = ['Ver NBA', 'Anime', 'Cine', 'Música', 'Jugar Básquetbol'];

  var redesSociales = {
    'instagram': '@usuario_ejemplo',
    'facebook': 'usuario.facebook',
    'twitter': '@usuario_tw',
  };

  // Mostrar información de forma organizada
  print('='.padRight(50, '='));
  print('         PERFIL PERSONAL');
  print('='.padRight(50, '='));
  print('');
  print('Nombre: $nombreCompleto');
  print('Año de nacimiento: $anioNacimiento');
  print('Edad actual: $edad años');
  print('Altura: $altura m');
  print('');
  print('--- Pasatiempos ---');
  for (var i = 0; i < pasatiempos.length; i++) {
    print('  ${i + 1}. ${pasatiempos[i]}');
  }
  print('');
  print('--- Redes Sociales ---');
  redesSociales.forEach((red, usuario) {
    print('  $red: $usuario');
  });
  print('='.padRight(50, '='));
}
