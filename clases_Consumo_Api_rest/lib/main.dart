import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Consumo de Api rest",
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
  //el _ indicamos que es una variable local
  //solo se usara en esta clase
  // creamos un objeto
  Empresa _facebook = new Empresa();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consumo de api"),
      ),
      body: Center(
        child: Container(
          child: Text("Hoila",
            style:TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
class Empresa{

}