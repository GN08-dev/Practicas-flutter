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
/**********************************************************************/
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //********************************
  //el _ indicamos que es una variable local
  //solo se usara en esta clase
  // creamos un objeto facebook
  Empresa _facebook = Empresa("Facebook", "Mark Zuckerberg", 1000000);
  //creamos una variable llamada texto
  Text _TextoPlano = new Text("Hola", style: TextStyle(fontSize: 25),);

  //hacemos un metodo initstate
  @override
  void initState(){
    super.initState();
    print(_facebook.nombre);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consumo de api"),
      ),
      body: Center(
        child: Container(
          child:Text(_facebook.nombre) // se puede usar tambien de esta formaa o con el textplano directo
        ),
      ),
    );
  }
}
//nombre de la clase debe ser mayuscula
class Empresa {
  //propiedades de la clase
  //afuerzas se le debe declarar que pueden ser opcionalmente nul por ello se coloca el ?
  String nombre;
  String Propietario;
  int Ingreso_Anual;
  // //metodo o constructor
  // Empresa(String nombre, String Propietario, int Ingreso_Anual){
  //   this.nombre = nombre;
  //   this.Propietario = Propietario;
  //   this.Ingreso_Anual = Ingreso_Anual;
  // }
  Empresa(this.nombre, this.Propietario, this.Ingreso_Anual);

}

