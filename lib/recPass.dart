import 'package:flutter/material.dart';

class RecPass extends StatefulWidget {
  @override
  _RecPassState createState() => _RecPassState();
}

class _RecPassState extends State<RecPass> {
  TextEditingController email = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Olvidé mi contraseña"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(children: [
          Text(
              "Para recuperar el acceso a tu cuenta, es necesario que ingreses el correo electrónico con el que estás registrado."),
          SizedBox(height: 20),
          TextField(
            controller: email,
            decoration:
                InputDecoration(hintText: "Ingresa tu correo electrónico"),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            width: 200,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(2)),
            child: TextButton(
              child: Text("Recuperar contraseña",
                  style: TextStyle(color: Colors.white)),
              onPressed: () {
                print(email.text);
              },
            ),
          ),
        ]),
      ),
    );
  }
}
