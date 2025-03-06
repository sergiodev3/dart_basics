class Persona {
  final String nombre;

  Persona(this.nombre); // Se inicializa en el constructor
}

void main() {
  var p1 = Persona("Ana");
  print(p1.nombre); // Ana

  //p1.nombre = "Carlos"; // ❌ Error: No se puede modificar un final
}
