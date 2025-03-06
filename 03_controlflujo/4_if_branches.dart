// ignore_for_file: unused_local_variable

void main() {
  var edad = 17;

  if (edad >= 18) {
    print("eres mayor de edad, tu edad es: $edad");
  } else {
    print("Eres menor de edad, tu edad es: $edad");
  }

// ejemplo 2
  if (isRaining()) {
    bringRainCoat();
  } else if (isSnowing()) {
    wearJacket();
  } else {
    putTopDown();
  }
}

bool isRaining() {
  return true;
}

bool isSnowing() {
  return false;
}

void bringRainCoat() {
  print("Deberías llevar un impermeable porque está lloviendo.");
}

void wearJacket() {
  print("Deberías llevar una chaqueta porque está nevando.");
}

void putTopDown() {
  print("Puedes bajar el techo del auto.");
}
