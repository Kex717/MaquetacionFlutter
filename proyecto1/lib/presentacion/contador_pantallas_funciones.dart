import "package:flutter/material.dart";
import 'package:proyecto1/config/app_tema.dart';
class ContadorPantallasFunciones extends StatefulWidget {
  const ContadorPantallasFunciones({super.key});

  @override
  State<ContadorPantallasFunciones> createState() =>
      _ContadorPantallasFuncionesState();
}

class _ContadorPantallasFuncionesState
    extends State<ContadorPantallasFunciones> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contador Funciones"),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('$clickCounter',
                style: const TextStyle(
                    fontSize: 160, fontWeight: FontWeight.w100)),
            Text("Click${clickCounter == 1 ? "" : "s"}",
                style: const TextStyle(fontSize: 25))
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(
                () {
                  clickCounter++;
                },
              );
            },
            child: const Icon(Icons.plus_one),
            backgroundColor: Theme.of(context).colorScheme.secondary,
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              setState(
                () {
                  clickCounter--;
                },
              );
            },
            child: const Icon(Icons.plus_one),
            backgroundColor: Theme.of(context).colorScheme.secondary,
          )
        ],
      ),
    );
  }
}
