void main() {
  // Operador de negación !
  //Se utiliza para negar una expresión booleana.
  //Si la expresión es verdadera (true),
  //la negación la convierte en falsa (false), y viceversa.
  bool llueve = false;
  bool noLlueve = !llueve;

  print(noLlueve); // Imprimirá true, ya que !false es true

  //Operador o lógico ||
  // Devuelve true si al menos una de las expresiones es verdadera.
  bool esDiasuetoDeSemana = true;
  bool esFinDeSemana = false;

  // ignore: dead_code
  bool esDiaLibre = esDiasuetoDeSemana || esFinDeSemana;

  print(esDiaLibre); // Imprimirá true, ya que esDiaDeSemana es true

  //Operador y lógico (&&):
  //Devuelve true si ambas expresiones son verdaderas.
  int edad = 25;
  bool tieneLicencia = true;

  bool puedeConducir = edad >= 18 && tieneLicencia;

  print(puedeConducir);
  // Imprimirá true, ya que ambas expresiones son verdaderas
}
