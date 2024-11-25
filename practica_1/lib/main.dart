import 'package:flutter/material.dart';

//esta es la estructura de un main
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  //constructor
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "My App",
      home: Inicio(),
    );
  }
}

//diferencia entre statefulwidget
class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  //constructor
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("mi primera aplicacion en flutter"),
      ),
      body: const Center(
        child: Text("Contenido de mi scafloold"),
      ),
    );
  }
}
