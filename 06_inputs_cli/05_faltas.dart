import 'dart:io';

void main() {
  var asistenciasMax = 24;
  var faltasMax = asistenciasMax * .3;
  print("Ingresa el numero de faltas");
  var faltas = double.parse(stdin.readLineSync() ?? '0');
  if (faltas > faltasMax) {
    print("Tienes exceso de faltas, estas REPROBADO");
  } else {
    print("Tienes las asistencias para APROBAR, Felicidades");
  }
}
