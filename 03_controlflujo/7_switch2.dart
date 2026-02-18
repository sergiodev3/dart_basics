/// Ejemplo 7: Sistema de inventario con switch
///
/// Aplicación práctica que demuestra el uso de switch en un menú interactivo.
/// Incluye entrada de usuario y gestión de inventario básica.

import 'dart:io';

void main() {
  print('╔═══════════════════════════════════════════╗');
  print('║   SISTEMA DE GESTIÓN DE INVENTARIO       ║');
  print('╚═══════════════════════════════════════════╝\n');

  // Modo interactivo deshabilitado para demostración
  // Para usar de forma interactiva, descomenta la línea siguiente:
  // ejecutarModoInteractivo();

  // Demostración automática
  ejecutarDemostracion();
}

/// Ejecuta el sistema en modo interactivo (requiere entrada del usuario)
void ejecutarModoInteractivo() {
  bool continuar = true;

  while (continuar) {
    mostrarMenu();
    continuar = procesarOpcion();

    if (continuar) {
      print('\n${'-' * 45}');
      print('Presiona Enter para continuar...');
      stdin.readLineSync();
      print('\n' * 2);
    }
  }
}

/// Muestra el menú principal
void mostrarMenu() {
  print('╔═══════════════════════════════════════════╗');
  print('║           MENÚ PRINCIPAL                 ║');
  print('╠═══════════════════════════════════════════╣');
  print('║  1. 📦 Registrar producto                 ║');
  print('║  2. 💰 Modificar precio                   ║');
  print('║  3. 📊 Verificar stock                    ║');
  print('║  4. 🚪 Salir                              ║');
  print('╚═══════════════════════════════════════════╝\n');
}

/// Procesa la opción seleccionada por el usuario
/// Retorna true si debe continuar, false si debe salir
bool procesarOpcion() {
  stdout.write('Ingrese una opción (1-4): ');
  int opcionMenu = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;
  print('');

  switch (opcionMenu) {
    case 1:
      registrarProducto();
      return true;

    case 2:
      modificarPrecio();
      return true;

    case 3:
      verificarStock();
      return true;

    case 4:
      print('👋 Saliendo del sistema...');
      print('¡Hasta pronto!');
      return false;

    default:
      print('❌ Opción inválida. Por favor selecciona 1-4.');
      return true;
  }
}

/// Registra un nuevo producto en el inventario
void registrarProducto() {
  print('═══ REGISTRAR PRODUCTO ═══\n');

  stdout.write('Nombre del producto: ');
  var nombreProducto = stdin.readLineSync() ?? '';

  stdout.write('Categoría: ');
  var categoriaProducto = stdin.readLineSync() ?? '';

  stdout.write('Precio: \$');
  var precioProducto = double.tryParse(stdin.readLineSync() ?? '0') ?? 0.0;

  stdout.write('Cantidad en stock: ');
  var stockProducto = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

  print('\n✓ Producto registrado exitosamente:\n');
  print('  Nombre:     $nombreProducto');
  print('  Categoría:  $categoriaProducto');
  print('  Precio:     \$${precioProducto.toStringAsFixed(2)}');
  print('  Stock:      $stockProducto unidades');
}

/// Modifica el precio de un producto existente
void modificarPrecio() {
  print('═══ MODIFICAR PRECIO ═══\n');

  stdout.write('Nombre del producto: ');
  var nombreProducto = stdin.readLineSync() ?? '';

  stdout.write('Nuevo precio: \$');
  var nuevoPrecio = double.tryParse(stdin.readLineSync() ?? '0') ?? 0.0;

  print('\n✓ Precio actualizado:');
  print('  Producto: $nombreProducto');
  print('  Nuevo precio: \$${nuevoPrecio.toStringAsFixed(2)}');
}

/// Verifica el stock de productos
void verificarStock() {
  print('═══ VERIFICAR STOCK ═══\n');

  stdout.write('Stock mínimo permitido: ');
  var stockMinimo = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

  stdout.write('Stock actual: ');
  var stockActual = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

  print('');
  if (stockActual < stockMinimo) {
    var diferencia = stockMinimo - stockActual;
    print('⚠️  ADVERTENCIA: Stock bajo');
    print('   Stock actual: $stockActual');
    print('   Stock mínimo: $stockMinimo');
    print('   Faltan: $diferencia unidades');
    print('   Acción: Reabastecer inventario');
  } else {
    var excedente = stockActual - stockMinimo;
    print('✓ Stock suficiente');
    print('  Stock actual: $stockActual');
    print('  Stock mínimo: $stockMinimo');
    print('  Excedente: $excedente unidades');
  }
}

/// Ejecuta una demostración automática del sistema
void ejecutarDemostracion() {
  print('═══ DEMOSTRACIÓN DEL SISTEMA ═══\n');

  print('Ejemplo 1: Verificación de stock bajo');
  print('  Stock actual: 15 unidades');
  print('  Stock mínimo: 20 unidades');
  print('  Resultado: ⚠️  Reabastecer (faltan 5 unidades)\n');

  print('Ejemplo 2: Verificación de stock suficiente');
  print('  Stock actual: 50 unidades');
  print('  Stock mínimo: 20 unidades');
  print('  Resultado: ✓ Stock suficiente (excedente: 30)\n');

  print('💡 Tip: Descomenta ejecutarModoInteractivo() en main()');
  print('   para usar el sistema de forma interactiva.');
}
