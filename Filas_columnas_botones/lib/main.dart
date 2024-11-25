import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Filas, columnas y botones",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista Botones y columnas"),
      ),
      //aparte de colum existe el row
      body: Column(
        //como de contenedores,cajas,textos etc por ejes x o y
        mainAxisAlignment: MainAxisAlignment.spaceBetween, //eje y
        mainAxisSize: MainAxisSize.max, //por tama;o de espacio
        crossAxisAlignment: CrossAxisAlignment.start, //eje x
        children: <Widget>[
          //ahora como mide el tama;o completo el contenedor entonces se centra
          // el  texto
          Center(
            child: SizedBox(
              //asignacion de tama;o completo de pantalla con un mediaquery
              width: MediaQuery.of(context).size.width,
              child: const Text("Contenedor", textAlign: TextAlign.center),
            ),
          ),
          const Text("Contenedor2"),
          const Text("Contenedor3"),
          Center(
            child: TextButton(
              onPressed: () {
                var time = DateTime.now();
                print(time);
              },
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.import_contacts),
                  SizedBox(width: 5),
                  Text("Hola mundo"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
