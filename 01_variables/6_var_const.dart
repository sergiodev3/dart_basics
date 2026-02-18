/// Ejemplo 6: Palabra clave 'const'
///
/// 'const' crea constantes en tiempo de compilación.
/// Diferencias clave:
/// - const: valor fijo en compilación, completamente inmutable
/// - final: valor asignado una vez en runtime, puede cambiar entre ejecuciones

// Constantes en tiempo de compilación
const double pi = 3.14159;
const int maxIntentos = 5;
const String appVersion = '1.0.0';

// Colecciones const son completamente inmutables
const listaConstante = [1, 2, 3, 4, 5];
const mapaConstante = {'clave1': 'valor1', 'clave2': 'valor2'};

// Final con valores constantes (la lista es const, pero la variable es final)
final listaFinal = const [6, 7, 8, 9];
final mapaFinal = const {'a': 10, 'b': 20};

/// Clase con constructor const para crear objetos inmutables
class Punto {
  final int x;
  final int y;

  // Constructor const: permite crear instancias constantes
  const Punto(this.x, this.y);

  @override
  String toString() => 'Punto(x: $x, y: $y)';
}

void main() {
  print('=== Constantes (const) ===\n');

  // Valores constantes
  print('Valor de π: $pi');
  print('Máximo de intentos: $maxIntentos');
  print('Versión de la app: $appVersion');

  print('\n=== Colecciones Constantes ===\n');
  print('Lista constante: $listaConstante');
  print('Mapa constante: $mapaConstante');
  print('Lista final: $listaFinal');
  print('Mapa final: $mapaFinal');

  print('\n=== Objetos Const ===\n');

  // Crear instancia con constructor const
  const punto1 = Punto(10, 20);
  const punto2 = Punto(5, 15);

  print('Punto 1: $punto1');
  print('Punto 2: $punto2');

  // Verificar si son la misma instancia (const reutiliza objetos idénticos)
  const punto3 = Punto(10, 20);
  print(
    '\n¿punto1 y punto3 son el mismo objeto?: ${identical(punto1, punto3)}',
  ); // true

  print('\n=== Diferencias const vs final ===\n');
  print('✓ const: Valor conocido en compilación');
  print('✓ final: Valor asignado en runtime');
  print('✓ const colecciones: Completamente inmutables');
  print('✓ const objetos: Reutiliza instancias idénticas');

  // ❌ Errores comunes:
  // listaConstante.add(6);        // Error: No se puede modificar
  // mapaConstante['nueva'] = 99;  // Error: No se puede modificar
  // punto1.x = 5;                 // Error: x es final
}
