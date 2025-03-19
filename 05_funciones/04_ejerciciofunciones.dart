void main() {
  calPrestamo(false, 32000);
}

void calPrestamo(bool enganche, double sueldo) {
  // ignore: unused_local_variable
  var enganchen = enganche;
  var sueldom = sueldo;

  if (enganchen == true && sueldom >= 30000) {
    print("Eres apto para el credito");
  } else {
    print("No eres apto para el credito");
  }
}
