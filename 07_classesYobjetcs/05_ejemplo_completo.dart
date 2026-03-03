// ============================================
// EJEMPLO COMPLETO: SISTEMA DE BIBLIOTECA
// ============================================
// Este ejemplo integra: clases, constructores, métodos y herencia

// CLASE BASE ABSTRACTA
abstract class Material {
  String titulo;
  String codigo;
  bool prestado;
  
  Material(this.titulo, this.codigo) : prestado = false;
  
  // Método abstracto que debe ser implementado
  void mostrarInfo();
  
  // Método común para todos los materiales
  bool prestar() {
    if (!prestado) {
      prestado = true;
      print('✓ "$titulo" ha sido prestado');
      return true;
    } else {
      print('✗ "$titulo" ya está prestado');
      return false;
    }
  }
  
  void devolver() {
    if (prestado) {
      prestado = false;
      print('✓ "$titulo" ha sido devuelto');
    } else {
      print('✗ "$titulo" no estaba prestado');
    }
  }
  
  String obtenerEstado() {
    return prestado ? 'Prestado' : 'Disponible';
  }
}

// CLASES HIJAS
class Libro extends Material {
  String autor;
  int numPaginas;
  String editorial;
  
  Libro({
    required String titulo,
    required String codigo,
    required this.autor,
    required this.numPaginas,
    required this.editorial,
  }) : super(titulo, codigo);
  
  @override
  void mostrarInfo() {
    print('\n📚 LIBRO');
    print('   Título: $titulo');
    print('   Autor: $autor');
    print('   Páginas: $numPaginas');
    print('   Editorial: $editorial');
    print('   Código: $codigo');
    print('   Estado: ${obtenerEstado()}');
  }
}

class Revista extends Material {
  int numeroEdicion;
  String mes;
  int anio;
  
  Revista({
    required String titulo,
    required String codigo,
    required this.numeroEdicion,
    required this.mes,
    required this.anio,
  }) : super(titulo, codigo);
  
  @override
  void mostrarInfo() {
    print('\n📰 REVISTA');
    print('   Título: $titulo');
    print('   Edición: #$numeroEdicion');
    print('   Fecha: $mes $anio');
    print('   Código: $codigo');
    print('   Estado: ${obtenerEstado()}');
  }
}

class DVD extends Material {
  String director;
  int duracionMinutos;
  String genero;
  
  DVD({
    required String titulo,
    required String codigo,
    required this.director,
    required this.duracionMinutos,
    required this.genero,
  }) : super(titulo, codigo);
  
  @override
  void mostrarInfo() {
    print('\n💿 DVD');
    print('   Título: $titulo');
    print('   Director: $director');
    print('   Duración: $duracionMinutos minutos');
    print('   Género: $genero');
    print('   Código: $codigo');
    print('   Estado: ${obtenerEstado()}');
  }
}

// CLASE USUARIO
class Usuario {
  String nombre;
  String id;
  List<Material> materialesPrestados = [];
  int maxPrestamos;
  
  Usuario({
    required this.nombre,
    required this.id,
    this.maxPrestamos = 3,
  });
  
  bool puedePrestar() {
    return materialesPrestados.length < maxPrestamos;
  }
  
  bool prestarMaterial(Material material) {
    if (!puedePrestar()) {
      print('✗ $nombre ha alcanzado el límite de préstamos ($maxPrestamos)');
      return false;
    }
    
    if (material.prestar()) {
      materialesPrestados.add(material);
      print('   → Prestado a: $nombre');
      return true;
    }
    return false;
  }
  
  void devolverMaterial(Material material) {
    if (materialesPrestados.contains(material)) {
      material.devolver();
      materialesPrestados.remove(material);
      print('   → Devuelto por: $nombre');
    } else {
      print('✗ $nombre no tiene prestado este material');
    }
  }
  
  void mostrarPrestamos() {
    print('\n👤 Usuario: $nombre (ID: $id)');
    print('   Préstamos activos: ${materialesPrestados.length}/$maxPrestamos');
    
    if (materialesPrestados.isEmpty) {
      print('   No tiene materiales prestados');
    } else {
      print('   Materiales prestados:');
      for (var material in materialesPrestados) {
        print('   • ${material.titulo} (${material.codigo})');
      }
    }
  }
}

// CLASE BIBLIOTECA
class Biblioteca {
  String nombre;
  List<Material> catalogo = [];
  List<Usuario> usuarios = [];
  
  Biblioteca(this.nombre);
  
  void agregarMaterial(Material material) {
    catalogo.add(material);
    print('✓ Material agregado: ${material.titulo}');
  }
  
  void registrarUsuario(Usuario usuario) {
    usuarios.add(usuario);
    print('✓ Usuario registrado: ${usuario.nombre}');
  }
  
  Material? buscarPorCodigo(String codigo) {
    try {
      return catalogo.firstWhere((m) => m.codigo == codigo);
    } catch (e) {
      return null;
    }
  }
  
  void mostrarCatalogo() {
    print('\n' + '=' * 50);
    print('📖 CATÁLOGO DE BIBLIOTECA: $nombre');
    print('=' * 50);
    
    if (catalogo.isEmpty) {
      print('El catálogo está vacío');
    } else {
      for (var material in catalogo) {
        material.mostrarInfo();
      }
    }
    print('=' * 50);
  }
  
  void mostrarEstadisticas() {
    int disponibles = catalogo.where((m) => !m.prestado).length;
    int prestados = catalogo.where((m) => m.prestado).length;
    
    print('\n📊 ESTADÍSTICAS');
    print('   Total de materiales: ${catalogo.length}');
    print('   Disponibles: $disponibles');
    print('   Prestados: $prestados');
    print('   Usuarios registrados: ${usuarios.length}');
  }
}

// MAIN - SIMULACIÓN DEL SISTEMA
void main() {
  print('╔═══════════════════════════════════════════════════╗');
  print('║   SISTEMA DE GESTIÓN DE BIBLIOTECA               ║');
  print('╚═══════════════════════════════════════════════════╝\n');
  
  // Crear biblioteca
  Biblioteca biblioteca = Biblioteca('Biblioteca Central');
  
  // Crear materiales
  print('📝 AGREGANDO MATERIALES AL CATÁLOGO\n');
  
  Libro libro1 = Libro(
    titulo: 'Cien años de soledad',
    codigo: 'LIB001',
    autor: 'Gabriel García Márquez',
    numPaginas: 471,
    editorial: 'Sudamericana',
  );
  
  Libro libro2 = Libro(
    titulo: 'El Quijote',
    codigo: 'LIB002',
    autor: 'Miguel de Cervantes',
    numPaginas: 863,
    editorial: 'Francisco de Robles',
  );
  
  Revista revista1 = Revista(
    titulo: 'National Geographic',
    codigo: 'REV001',
    numeroEdicion: 150,
    mes: 'Enero',
    anio: 2024,
  );
  
  DVD dvd1 = DVD(
    titulo: 'Inception',
    codigo: 'DVD001',
    director: 'Christopher Nolan',
    duracionMinutos: 148,
    genero: 'Ciencia Ficción',
  );
  
  biblioteca.agregarMaterial(libro1);
  biblioteca.agregarMaterial(libro2);
  biblioteca.agregarMaterial(revista1);
  biblioteca.agregarMaterial(dvd1);
  
  // Registrar usuarios
  print('\n👥 REGISTRANDO USUARIOS\n');
  
  Usuario usuario1 = Usuario(nombre: 'Juan Pérez', id: 'USR001');
  Usuario usuario2 = Usuario(nombre: 'María García', id: 'USR002', maxPrestamos: 5);
  
  biblioteca.registrarUsuario(usuario1);
  biblioteca.registrarUsuario(usuario2);
  
  // Mostrar catálogo
  biblioteca.mostrarCatalogo();
  
  // Simulación de préstamos
  print('\n💼 REALIZANDO PRÉSTAMOS\n');
  
  usuario1.prestarMaterial(libro1);
  usuario1.prestarMaterial(dvd1);
  
  usuario2.prestarMaterial(libro2);
  usuario2.prestarMaterial(revista1);
  
  // Intentar prestar un material ya prestado
  print('\n');
  usuario2.prestarMaterial(libro1);
  
  // Mostrar préstamos de usuarios
  print('\n');
  usuario1.mostrarPrestamos();
  usuario2.mostrarPrestamos();
  
  // Mostrar estadísticas
  biblioteca.mostrarEstadisticas();
  
  // Devoluciones
  print('\n📥 REALIZANDO DEVOLUCIONES\n');
  
  usuario1.devolverMaterial(libro1);
  usuario2.devolverMaterial(revista1);
  
  // Estado final
  print('\n');
  usuario1.mostrarPrestamos();
  usuario2.mostrarPrestamos();
  
  biblioteca.mostrarEstadisticas();
  
  // Buscar material por código
  print('\n🔍 BÚSQUEDA POR CÓDIGO\n');
  
  Material? materialEncontrado = biblioteca.buscarPorCodigo('LIB002');
  if (materialEncontrado != null) {
    materialEncontrado.mostrarInfo();
  } else {
    print('✗ Material no encontrado');
  }
  
  print('\n' + '=' * 50);
  print('✓ Simulación completada');
  print('=' * 50);
}
