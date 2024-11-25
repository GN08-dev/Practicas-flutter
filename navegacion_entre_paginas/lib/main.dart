import 'package:flutter/material.dart';
import 'package:navegacion_entre_paginas/Pages/Pagina02.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Home",
      home: Navegacion(),
    );
  }
}
class Navegacion extends StatefulWidget {
  const Navegacion({super.key});

  @override
  State<Navegacion> createState() => _NavegacionState();
}

class _NavegacionState extends State<Navegacion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navegacion"),
        backgroundColor: Colors.blue,
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hola mundo"),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Pagina02()));
                  print("se envio a pagina 2");
                },
                child: Text("Ir a la pagina 2"))
          ],
        ),
      ),
    );
  }
}

