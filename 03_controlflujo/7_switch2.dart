import 'dart:io';

void main() {
  print("Bienvenidos al Sistema de Inventario");
  print("Selecciona la opción deseada ingresando el número de opción:");
  print("1 .- Registrar producto");
  print("2 .- Modificar precio");
  print("3 .- Verificar stock");
  print("4 .- Salir");

  bool salir = false;

  while (!salir) {
    menuInventario();
    print("\nPresiona Enter para continuar...");
    stdin.readLineSync();
  }
}

void menuInventario() {
  print("\nIngrese una opción del menú:");
  int opcionMenu = int.parse(stdin.readLineSync() ?? '0');

  switch (opcionMenu) {
    case 1:
      print("Opción seleccionada - Registrar producto");
      print("Ingresa el nombre del producto:");
      var nombreProducto = stdin.readLineSync();
      print("Ingresa la categoría del producto:");
      var categoriaProducto = stdin.readLineSync();
      print("Ingresa el precio del producto:");
      var precioProducto = double.parse(stdin.readLineSync() ?? '0.0');
      print("Ingresa la cantidad en stock:");
      var stockProducto = int.parse(stdin.readLineSync() ?? '0');

      print("\nProducto registrado exitosamente:");
      print("Nombre: $nombreProducto");
      print("Categoría: $categoriaProducto");
      print("Precio: \$$precioProducto");
      print("Stock disponible: $stockProducto");
      break;

    case 2:
      print("Opción seleccionada - Modificar precio");
      print("Ingresa el nombre del producto a modificar:");
      var nombreProducto = stdin.readLineSync();
      print("Ingresa el nuevo precio:");
      var nuevoPrecio = double.parse(stdin.readLineSync() ?? '0.0');

      print(
          "\nEl precio del producto '$nombreProducto' ha sido actualizado a \$$nuevoPrecio.");
      break;

    case 3:
      print("Opción seleccionada - Verificar stock");
      print("Ingresa la cantidad mínima de stock permitida:");
      var stockMinimo = int.parse(stdin.readLineSync() ?? '0');
      print("Ingresa la cantidad actual en stock:");
      var stockActual = int.parse(stdin.readLineSync() ?? '0');

      if (stockActual < stockMinimo) {
        print(
            "Advertencia: Stock bajo. Es necesario reabastecer el inventario.");
      } else {
        print("El stock es suficiente.");
      }
      break;

    case 4:
      print("Saliendo del sistema...");
      exit(0);

    default:
      print("Opción desconocida, ingresa una opción válida del menú.");
  }
}
