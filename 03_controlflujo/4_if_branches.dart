/// Ejemplo 4: Condicionales if-else
///
/// Las sentencias if-else permiten tomar decisiones en el código.
/// Estructura: if (condición) { ... } else if (condición) { ... } else { ... }

void main() {
  print('=== CONDICIONALES IF-ELSE ===\n');

  // Ejemplo 1: Verificar mayoría de edad
  print('--- Verificación de edad ---');
  var edad = 20;

  if (edad >= 18) {
    print('Edad: $edad años');
    print('✓ Eres mayor de edad');
  } else {
    print('Edad: $edad años');
    print('❌ Eres menor de edad');
  }

  // Ejemplo 2: Múltiples condiciones con else if
  print('\n--- Sistema de calificaciones ---');
  var calificacion = 85;

  print('Calificación: $calificacion');
  if (calificacion >= 90) {
    print('Resultado: Excelente 🌟');
  } else if (calificacion >= 80) {
    print('Resultado: Muy bien ✓');
  } else if (calificacion >= 70) {
    print('Resultado: Bien');
  } else if (calificacion >= 60) {
    print('Resultado: Suficiente');
  } else {
    print('Resultado: Insuficiente ❌');
  }

  // Ejemplo 3: Clima y recomendaciones
  print('\n--- Recomendaciones según el clima ---');
  mostrarRecomendacionesClima('lluvia');
  mostrarRecomendacionesClima('nieve');
  mostrarRecomendacionesClima('sol');

  // Ejemplo 4: Operador ternario (forma corta de if-else)
  print('\n--- Operador ternario ---');
  var temperatura = 25;
  String clima = temperatura > 20 ? 'Cálido' : 'Frío';
  print('Temperatura: $temperatura°C - Clima: $clima');

  // Ejemplo 5: Validación múltiple (mostrar ambos casos)
  print('\n--- Validación de acceso ---');
  verificarAcceso(true, 21, 18); // Caso: acceso permitido
  verificarAcceso(false, 21, 18); // Caso: sin credencial
  verificarAcceso(true, 16, 18); // Caso: menor de edad
}

/// Muestra recomendaciones según el tipo de clima
void mostrarRecomendacionesClima(String clima) {
  print('\nClima: $clima');
  if (clima == 'lluvia') {
    print('☂️ Deberías llevar un impermeable porque está lloviendo.');
  } else if (clima == 'nieve') {
    print('🧥 Deberías llevar una chaqueta porque está nevando.');
  } else {
    print('☀️ ¡Disfruta del buen clima!');
  }
}

/// Verifica el acceso basado en credencial y edad
void verificarAcceso(bool tieneCredencial, int edadUsuario, int edadMinima) {
  print(
    '\nVerificando acceso (Credencial: ${tieneCredencial ? "Sí" : "No"}, Edad: $edadUsuario):',
  );

  if (tieneCredencial && edadUsuario >= edadMinima) {
    print('  ✓ Acceso permitido');
  } else {
    print('  ❌ Acceso denegado');
    if (!tieneCredencial) {
      print('    Motivo: No tiene credencial');
    }
    if (edadUsuario < edadMinima) {
      print('    Motivo: Edad insuficiente (mínimo: $edadMinima)');
    }
  }
}

void traerImpermeable() {
  print('☂️ Deberías llevar un impermeable porque está lloviendo.');
}

void usarChaqueta() {
  print('🧥 Deberías llevar una chaqueta porque está nevando.');
}

void disfrutarDelSol() {
  print('☀️ ¡Disfruta del buen clima!');
}
