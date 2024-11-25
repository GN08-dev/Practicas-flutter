import 'package:flutter/material.dart';
import 'package:navegacion_entre_paginas/main.dart';

class Pagina02 extends StatefulWidget {
  const Pagina02({super.key});

  @override
  State<Pagina02> createState() => _Pagina02State();
}

class _Pagina02State extends State<Pagina02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina 2"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
            children: [
              texto(),
              boton(context)
            ],
          ),
      ),
    );
  }
}
Widget boton(BuildContext context){
  return ElevatedButton(onPressed: (){
    Navigator.pop(context);
  }, child: Text("Ir a la pagina 1"));
}
Widget texto(){
  return Text("""Si de verdad están interesados en ver Kimetsu no Yaiba (Demon Slayer) la película: el tren infinito en cines, pero no han visto la serie, les recomendamos hacer una pequeña maratón del ‘anime’ aprovechando que la primera temporada de 26 episodios está disponible en Netflix. Aunque no es una historia muy original y sigue la estructura a la que nos tienen familiarizados muchos otros ‘shonen’, está llena de personajes carismáticos y buenos combates
  Lorem ipsum dolor sit amet consectetur adipisicing elit. Saepe assumenda minus, exercitationem nulla inventore explicabo itaque quisquam fuga id nihil necessitatibus vero ipsum quasi reiciendis doloribus, voluptatibus, modi molestias fugit?
  Odio dolore repellat laudantium sequi assumenda voluptate temporibus aspernatur expedita magni dolorum recusandae quaerat impedit saepe sapiente aperiam fugit culpa eveniet, corporis aut fugiat totam deserunt esse. Autem, hic quaerat!
  Beatae in corrupti aspernatur nobis expedita ipsam sint accusamus exercitationem accusantium. Earum aperiam illum ducimus. Velit eveniet assumenda officia vel neque sint fugit voluptatum totam quod fugiat. Consequatur, aperiam id.""");
}