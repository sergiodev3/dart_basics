void main() {
  tipoPago(20000, true, false);
}

void calPrestamo(bool enganche, double sueldom) {
  // ignore: unused_local_variable
  var enganchen = enganche;
  var sueldo = sueldom;
  if (enganchen = true && sueldo >= 35000) {
    print("Tienes derecho al credito automotriz");
  } else {
    print("No eres apto para el credito");
  }
}

void tipoPago(double pago, bool efectivo, bool tcredito) {
  var mpagoE = efectivo;
  var mpagoTC = tcredito;
  var totalP = pago;
  var descuentoE = totalP * .1;
  var descuentoTC = totalP * .2;
  print("Pagaste ${totalP}");
  if (mpagoE == true) {
    var total = totalP - descuentoE;
    print(
        "Pero tu pago es de \$${total}, tienes un descuento de ${descuentoE}");
  }
  if (mpagoTC == true) {
    var total = totalP - descuentoTC;
    print("tu pago es de ${total} , tienes un descuento de ${descuentoTC}");
  }
}

String diaSema(int numdia) {
  var diasema = numdia;
  switch (diasema) {
    case 1:
      return "Lunes";
    case 2:
      return "Martes";
    default:
      return "Desconocido";
  }
}
