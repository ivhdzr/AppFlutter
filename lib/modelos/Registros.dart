class Registros {
  late int id;
  late String dia;
  late String fecha;
  late String entrada;
  late String salida;

  Registros(this.id, this.dia, this.fecha, this.entrada, this.salida);
}

final Menu = [
  Registros(1, "Lunes", "27/02/2023", "8:20:23", "16:32:01"),
  Registros(2, "Martes", "28/02/2023", "9:11:23", "16:32:01"),
  Registros(3, "Miércoles", "29/02/2023", "8:10:23", "13:32:01"),
];
