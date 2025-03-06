void main() {
  var commando = 'PENDING';
  switch (commando) {
    case 'CLOSED':
      print("Closed");
    case 'PENDING':
      print("Pendiente");
    case 'OPEN':
      print("Abierto");
    default:
      print("Desconocido");
  }
}
