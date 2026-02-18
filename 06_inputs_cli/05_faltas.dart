/// Ejemplo 5: Sistema de verificación de asistencias
///
/// Verifica si un estudiante tiene suficientes asistencias para aprobar.
/// Máximo permitido: 30% de faltas sobre el total de clases.

import 'dart:io';

void main() {
  verificarAsistencias();
}

/// Verifica las asistencias de un estudiante
void verificarAsistencias() {
  print('┌────────────────────────────────────┐');
  print('│  SISTEMA DE CONTROL DE ASISTENCIAS  │');
  print('└────────────────────────────────────┘\n');

  const int clasesTotales = 24;
  const double porcentajeMaximoFaltas = 0.30; // 30%
  final int faltasMaximas = (clasesTotales * porcentajeMaximoFaltas).round();

  print('📖 Información del curso:');
  print('   Clases totales: $clasesTotales');
  print(
    '   Faltas permitidas: $faltasMaximas (${(porcentajeMaximoFaltas * 100).toStringAsFixed(0)}%)',
  );
  print('');

  // Solicitar número de faltas
  stdout.write('📅 Ingresa el número de faltas: ');
  var entrada = stdin.readLineSync();

  // Validar entrada
  if (entrada == null || entrada.trim().isEmpty) {
    print('\n❌ Error: No ingresaste ningún valor.');
    return;
  }

  try {
    var faltas = int.parse(entrada.trim());

    // Validar rango
    if (faltas < 0) {
      print('\n❌ Error: El número de faltas no puede ser negativo.');
      return;
    }

    if (faltas > clasesTotales) {
      print(
        '\n❌ Error: Las faltas no pueden superar el total de clases ($clasesTotales).',
      );
      return;
    }

    // Calcular estadísticas
    var asistencias = clasesTotales - faltas;
    var porcentajeAsistencia = (asistencias / clasesTotales) * 100;
    var porcentajeFaltas = (faltas / clasesTotales) * 100;

    // Mostrar resultado
    print('');
    print('═' * 45);
    print('  REPORTE DE ASISTENCIAS');
    print('═' * 45);
    print('');
    print('  Faltas registradas: $faltas de $clasesTotales clases');
    print('  Asistencias: $asistencias');
    print(
      '  Porcentaje de asistencia: ${porcentajeAsistencia.toStringAsFixed(1)}%',
    );
    print('  Porcentaje de faltas: ${porcentajeFaltas.toStringAsFixed(1)}%');
    print('');
    print('─' * 45);

    if (faltas > faltasMaximas) {
      var exceso = faltas - faltasMaximas;
      print('  ❌ REPROBADO por exceso de faltas');
      print('');
      print('  Faltas permitidas: $faltasMaximas');
      print('  Faltas registradas: $faltas');
      print('  Exceso: $exceso falta(s)');
      print('');
      print('  ⚠️  No cumples con el mínimo de asistencias');
    } else {
      var margen = faltasMaximas - faltas;
      print('  ✅ APROBADO - Asistencias suficientes');
      print('');
      print('  Faltas permitidas: $faltasMaximas');
      print('  Faltas registradas: $faltas');
      print('  Margen disponible: $margen falta(s) más');
      print('');
      print('  🎉 ¡Felicidades! Cumples con el requisito');
    }

    print('═' * 45);
  } catch (e) {
    print('\n❌ Error: "$entrada" no es un número válido.');
    print('   Por favor, ingresa solo números enteros.');
  }
}
