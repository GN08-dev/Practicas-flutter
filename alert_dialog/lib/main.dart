import 'package:flutter/material.dart';

void main() => runApp(const Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Alert Dialog",
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _Suscripto = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("app bar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Llamamos a la función _mostrarAlerta pasando setState
                _mostrarAlerta(context, (bool suscripto) {
                  setState(() {
                    _Suscripto = suscripto;
                  });
                });
              },
              child: Text("Alerta"),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              _Suscripto ? "Suscripto" : "No suscripto",
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}

// Función fuera de la clase que recibe setState como parámetro
void _mostrarAlerta(BuildContext context, Function(bool) onSuscriptoChanged) {
  showDialog(
    barrierDismissible: false, // evitar que se pueda salir el diálogo aplanando en un costado
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text("Alerta básica"),
      content: const Text(
        'A dialog is a type of modal window that\n'
            'appears in front of app content to\n'
            'provide critical information, or prompt\n'
            'for a decision to be made.',
      ),
      actions: [
        // lista de acciones
        TextButton(
          child: const Text("Seguir"),
          onPressed: () {
            onSuscriptoChanged(true); // Llamamos al callback con el nuevo valor
            Navigator.of(context).pop(); // Cierra el diálogo
          },
        ),
        TextButton(
          child: const Text("No seguir"),
          onPressed: () {
            onSuscriptoChanged(false); // Llamamos al callback con el nuevo valor
            Navigator.of(context).pop(); // Cierra el diálogo
          },
        ),
      ],
    ),
  );
}
