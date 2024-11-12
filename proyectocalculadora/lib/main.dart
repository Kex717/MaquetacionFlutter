import 'package:flutter/material.dart';
import 'calculadora/Calculadora.dart';
import 'package:proyectocalculadora/config/tema/app_tema.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.theme(),
      home: const Calculadora(),
    );
  }
}