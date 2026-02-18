/// Ejemplo 6: Operadores lógicos
///
/// ! (negación/NOT): Invierte el valor booleano
/// || (OR lógico): Verdadero si AL MENOS UNA expresión es verdadera
/// && (AND lógico): Verdadero si AMBAS expresiones son verdaderas

void main() {
  print('=== OPERADORES LÓGICOS ===\n');

  // 1. Operador de negación (!)
  print('--- Operador ! (NOT) ---');
  bool llueve = false;
  bool noLlueve = !llueve;
  print('Llueve: $llueve');
  print('No llueve: $noLlueve');
  print('!true = ${!true}');
  print('!false = ${!false}\n');

  // 2. Operador OR lógico (||)
  print('--- Operador || (OR) ---');

  // Ejemplo 1: Día libre si es entre semana O fin de semana con permiso
  bool esDiaEntreSemana = false;
  bool tienePermiso = true;
  bool esDiaLibre = esDiaEntreSemana || tienePermiso;

  print('Es día entre semana: $esDiaEntreSemana');
  print('Tiene permiso: $tienePermiso');
  print('¿Es día libre?: $esDiaLibre\n');

  // Tabla de verdad OR
  print('Tabla de verdad OR (||):');
  print('  true  || true  = ${evaluarOr(true, true)}');
  print('  true  || false = ${evaluarOr(true, false)}');
  print('  false || true  = ${evaluarOr(false, true)}');
  print('  false || false = ${evaluarOr(false, false)}\n');

  // 3. Operador AND lógico (&&)
  print('--- Operador && (AND) ---');
  int edad = 25;
  bool tieneLicencia = true;
  bool puedeConducir = edad >= 18 && tieneLicencia;

  print('Edad: $edad');
  print('Tiene licencia: $tieneLicencia');
  print('¿Puede conducir?: $puedeConducir\n');

  // Tabla de verdad AND
  print('Tabla de verdad AND (&&):');
  print('  true  && true  = ${evaluarAnd(true, true)}');
  print('  true  && false = ${evaluarAnd(true, false)}');
  print('  false && true  = ${evaluarAnd(false, true)}');
  print('  false && false = ${evaluarAnd(false, false)}\n');

  // Ejemplo práctico: validación de acceso
  print('=== EJEMPLO PRÁCTICO: Validación de Acceso ===\n');

  String usuario = 'admin';
  String contrasenia = '12345';
  bool estaConectado = true;

  bool usuarioCorrecto = usuario == 'admin';
  bool contraseniaCorrecta = contrasenia == '12345';
  bool accesoPermitido =
      usuarioCorrecto && contraseniaCorrecta && estaConectado;

  print('Usuario correcto: $usuarioCorrecto');
  print('Contraseña correcta: $contraseniaCorrecta');
  print('Está conectado: $estaConectado');
  print('\nAcceso permitido: ${accesoPermitido ? "✓ SÍ" : "❌ NO"}');
}

/// Evalúa operación OR sin cortocircuito (para tablas de verdad)
bool evaluarOr(bool a, bool b) => a || b;

/// Evalúa operación AND sin cortocircuito (para tablas de verdad)
bool evaluarAnd(bool a, bool b) => a && b;
