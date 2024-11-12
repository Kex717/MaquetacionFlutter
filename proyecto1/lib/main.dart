import "package:proyecto1/presentacion/contador_pantallas_funciones.dart";
import "package:flutter/material.dart";
import 'config/app_tema.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.theme(),
        home: const ContadorPantallasFunciones());
  }
}
