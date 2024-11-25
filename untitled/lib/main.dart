import 'package:flutter/material.dart';

void main() => runApp(const Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Obtener imagenes",
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
          title: const Text("Obtencion de imagenes"),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(
                  20), //coloca un borde a la imagen se le llama pading
              child: Image.network(
                  "https://cdn.wamiz.fr/cdn-cgi/image/format=auto,quality=80,width=776,fit=contain/article/images/WAMIZ%20MX/20DIC%20-%20Sindy/michi-gato-mexico.jpg"),
            ),
            Container(
              padding: const EdgeInsets.all(
                  20), //coloca un borde a la imagen se le llama pading
              child: Image.network(
                  "https://cdn.wamiz.fr/cdn-cgi/image/format=auto,quality=80,width=776,fit=contain/article/images/WAMIZ%20MX/20DIC%20-%20Sindy/michi-gato-mexico.jpg"),
            ),
            Container(
              padding: const EdgeInsets.all(
                  20), //coloca un borde a la imagen se le llama pading
              child: Image.network(
                  "https://cdn.wamiz.fr/cdn-cgi/image/format=auto,quality=80,width=776,fit=contain/article/images/WAMIZ%20MX/20DIC%20-%20Sindy/michi-gato-mexico.jpg"),
            ),
            Container(
              padding: const EdgeInsets.all(
                  20), //coloca un borde a la imagen se le llama pading
              child: Image.network(
                  "https://cdn.wamiz.fr/cdn-cgi/image/format=auto,quality=80,width=776,fit=contain/article/images/WAMIZ%20MX/20DIC%20-%20Sindy/michi-gato-mexico.jpg"),
            )
          ],
        ));
  }
}
