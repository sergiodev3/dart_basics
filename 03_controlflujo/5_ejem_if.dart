void main() {
  var ingresoMensual = 35000;
  var valorAuto = 380000;
  var enganche = valorAuto * .1;
  var tieneEnganche = true;
  print("Solicitud para credito automovilistico");
  print("Valor del auto de 380,000");
  if (ingresoMensual >= 35000 && tieneEnganche) {
    print("Eres apto para el credito tus ingreso son : $ingresoMensual");
    print("Tienes para depositar en enganche que es: $enganche");
  } else {
    print("No eres apto para el credito tus ingresos son : $ingresoMensual");
  }
}
