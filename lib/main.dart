import 'package:flutter/material.dart';
import 'package:integ/home.dart';
import 'package:integ/recPass.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Login',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Login());
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        /*decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.black38,
              blurRadius: 25.0,
              spreadRadius: 5.0,
              offset: Offset(2.0, 2.0))
        ], color: Colors.white, borderRadius: BorderRadius.circular(20)),*/
        margin: EdgeInsets.only(top: 50, left: 20, right: 20),
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/user.png", height: 150),
              SizedBox(height: 30),
              TextField(
                controller: email,
                decoration:
                    InputDecoration(hintText: "Ingresa tu correo electrónico"),
              ),
              SizedBox(height: 30),
              TextField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(hintText: "Ingresa tu contraseña"),
              ),
              Container(
                margin: EdgeInsets.only(top: 70),
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(2)),
                child: TextButton(
                  child: Text("Iniciar sesión",
                      style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RecPass()),
                  );
                },
                child: Text(
                  "Olvidé mi contraseña",
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
