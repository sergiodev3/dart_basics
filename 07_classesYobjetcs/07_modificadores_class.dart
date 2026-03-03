// ============================================
// MODIFICADOR @override EN CLASES
// ============================================

// @override se usa cuando una clase hija reemplaza
// (sobrescribe) un método que ya existe en su clase padre.

class Persona {
  String nombre;

  Persona(this.nombre);

  void presentarse() {
    print('Hola, soy $nombre.');
  }

  String rol() {
    return 'Persona';
  }

  @override
  String toString() {
    return 'Nombre: $nombre, Rol: ${rol()}';
  }
}

class Estudiante extends Persona {
  String carrera;

  Estudiante(String nombre, this.carrera) : super(nombre);

  @override
  void presentarse() {
    print('Hola, soy $nombre y estudio $carrera.');
  }

  @override
  String rol() {
    return 'Estudiante';
  }
}

class Profesor extends Persona {
  String materia;

  Profesor(String nombre, this.materia) : super(nombre);

  @override
  void presentarse() {
    print('Soy el profesor $nombre y enseño $materia.');
  }

  @override
  String rol() {
    return 'Profesor';
  }
}

void main() {
  Persona persona = Persona('Carlos');
  Persona estudiante = Estudiante('Ana', 'Ingeniería de Software');
  Persona profesor = Profesor('Laura', 'Programación en Dart');

  print('=== EJEMPLO @override ===');
  persona.presentarse();
  estudiante.presentarse();
  profesor.presentarse();

  print('\n=== toString() heredado/sobrescrito ===');
  print(persona);
  print(estudiante);
  print(profesor);
}
