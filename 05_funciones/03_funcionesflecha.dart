bool esPar(int numero) {
  return numero % 2 == 0;
}

bool esPar2(int numero) => numero % 2 == 0;

bool esMayor(int a, int b) {
  return a > b;
}

bool esMayor2(int a, int b) => a > b;

//int doble(int x) => x * 2;

int doble(int x) {
  print("Doblamos el número");
  return x * 2;
}

//String mensaje(int edad) => edad >= 18 ? "Mayor de edad" : "Menor de edad";

String mensaje(int edad) {
  if (edad >= 18) {
    return "Mayor de edad";
  } else {
    return "Menor de edad";
  }
}

Map<int, String> gasesNobles = {2: "Helio", 10: "Neón", 18: "Argón"};

bool esGasNoble(int numeroAtomico) => gasesNobles[numeroAtomico] != null;
