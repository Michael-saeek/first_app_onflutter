import 'package:flutter/material.dart';
import 'package:flutter_app1/counter_screen.dart';
//import 'package:flutter_app1/home_screen.dart';

void main() {
  /* aqui se corre el app de flutter */
  /* Dentro de runApp debemos enviar un widget*/
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /* click, control + . */
  /* Todo metodo stateless tiene un metodo build*/
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: CounterScreen());
  }
}
