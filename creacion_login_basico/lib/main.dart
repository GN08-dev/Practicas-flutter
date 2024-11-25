import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Flutter login",
      home: MyLogin(),
    );
  }
}

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Cuerpo()
    );
  }
}
//funcion a devolver al widget principal
//separacion de widget seraia una funcion
Widget Cuerpo(){
  return Container(
    decoration:const BoxDecoration(
      image: DecorationImage(image: NetworkImage("https://imgs.search.brave.com/CyrDvxoZySSwrcg0ouSBtthhNVC9SsypU12CnBUkpmQ/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9mcmFz/ZXNwYXJhbWkuY29t/L3dwLWNvbnRlbnQv/dXBsb2Fkcy8yMDE3/LzA3L2ltYWdlbmVz/LWJvbml0YXMtcGFy/YS1mb25kby1kZS1w/YW50YWxsYS5qcGc"),
      fit: BoxFit.cover
      )
    ),
    child:Center(
        child:Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            nombre(),
            campoUsuario(),
            campoContrasena(),
            const SizedBox(height: 15,),
            button()
          ],
        )
    ),
  );
}
//funcion para devolver widget
Widget nombre(){
  return const Text("Nombre",style:TextStyle(color: Colors.black, fontSize: 35.0, fontWeight: FontWeight.bold));
}
//funcoon para usuario
//para asignarle espacios es con un pading en este caso se envuelve primero dentro de un contenedor para poder modificarlo
Widget campoUsuario(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal:10, vertical: 10 ),
    child: const TextField(
      decoration: InputDecoration(
        hintText:"User",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

//fucion para el campo contrase;a
Widget campoContrasena(){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10,),
    child: const TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        fillColor: Colors.white,
        filled: true
      ),
    ),
  );
}

Widget button(){
  return TextButton(
    style: TextButton.styleFrom(
        backgroundColor: Colors.blue,
      padding: EdgeInsets.symmetric(horizontal:40 , vertical: 10)
    ),
    onPressed: (){},
    child: const Text("Entrar", style: TextStyle(color: Colors.white),),
  );
}
