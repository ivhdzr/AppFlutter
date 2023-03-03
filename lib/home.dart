import 'package:flutter/material.dart';
import 'package:integ/modelos/Registros.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    List listaPeriodo = ["Semana actual", "Semana anterior", "Mes anterior"];
    String? selectedItem = "Semana actual";

    return Scaffold(
      appBar: AppBar(
        title: Text("Mis registros"),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Row(children: [
                    Icon(Icons.close, color: Colors.black54),
                    Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text("Cerrar sesión"))
                  ]),
                )
              ],
              child: Icon(
                Icons.more_vert,
                size: 24.0,
              ),
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButtonFormField<String>(
                value: selectedItem,
                items: listaPeriodo
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(item),
                        ))
                    .toList(),
                onChanged: (item) => setState(() => selectedItem = item)),
            SizedBox(height: 30),
            Row(
              children: [
                Checkbox(
                  value: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value!;
                    });
                  },
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _value = !_value;
                    });
                  },
                  child: Text("Mostrar los retardos"),
                ),
              ],
            ),
            SizedBox(height: 30),
            Column(
              children: [
                DataTable(
                  columns: [
                    // Primera columna
                    DataColumn(
                      label: Text(
                        'Día',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                    ),

                    DataColumn(
                      label: Text(
                        'Fecha',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                    ),

                    DataColumn(
                      label: Text(
                        'Entrada',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                    ),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('Lunes')),
                      DataCell(Text('27/02/2023')),
                      DataCell(Text('8:20:19')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Martes')),
                      DataCell(Text('28/02/2023')),
                      DataCell(Text('8:24:27')),
                    ]),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.filter_alt),
        onPressed: () {
          _mostrarAlerta(context);
          print("hola");
        },
      ),*/

      /*child: DropdownButtonFormField<String>(
            value: selectedItem,
            items: listaPeriodo
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    ))
                .toList(),
            onChanged: (item) => setState(() => selectedItem = item))*/
    );
  }
}

/*Future<void> _mostrarAlerta(BuildContext context) {
  bool _ia = false;
  DateTime _dateTime = DateTime.now();

  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    ); /*.then((value) {
      setState(() {
        _dateTime = value!;
      });
    });*/
  }

  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Aplicar filtro'),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Text(_dateTime.toString(), style: TextStyle(fontSize: 30)),
              // Widget de selección de fecha
              MaterialButton(
                onPressed: _showDatePicker,
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('Choose Date',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ),
                color: Colors.blue,
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text('CANCELAR'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text('APLICAR'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}*/
