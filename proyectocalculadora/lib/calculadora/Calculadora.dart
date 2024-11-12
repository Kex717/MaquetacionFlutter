import 'package:flutter/material.dart';
import 'package:proyectocalculadora/config/tema/app_tema.dart';
class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State<Calculadora> createState() => _Calculadora();
}

class _Calculadora extends State<Calculadora> {
  String display = '0';
  String operation = '0';
  double? num1;
  double? num2;
  String? operator;

  void onButtonPressed(String buttonText) {
    setState(() {
      if (buttonText == 'AC') {
        display = '0';
        num1 = null;
        num2 = null;
        operator = null;
        operation = '0';
      } else if (buttonText == '⌫') {
        if (display.length > 1) {
          display = display.substring(0, display.length - 1);
        } else {
          display = '0';
        }
      } else if (['+', '-', '*', '/'].contains(buttonText)) {
        num1 = double.tryParse(display);
        operator = buttonText;
        display = '0';
      } else if (buttonText == '=') {
        num2 = double.tryParse(display);
        operation = display;
        if (num1 != null && num2 != null) {
          switch (operator) {
            case '+':
              display = (num1! + num2!).toString();
              break;
            case '-':
              display = (num1! - num2!).toString();
              break;
            case '*':
              display = (num1! * num2!).toString();
              break;
            case '/':
              display = (num1! / num2!).toString();
              break;
          }
        }
        num1 = null;
        num2 = null;
        operator = null;
      } else {
        if (display == '0') {
          display = buttonText;
        } else {
          display += buttonText;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(20),
                color: Colors.black12,
                child: Text(
                  operation,
                  style: const TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                  ),
                ),
              ),
            ),

            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(20),
                color: Colors.black12,
                child: Text(
                  display,
                  style: const TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                  ),
                ),
              ),
            ),

            GridView.builder(
              shrinkWrap: true,
              itemCount: 16,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: 1.2,
              ),
              itemBuilder: (context, index) {
                List<String> buttons = [
                  'AC', '⌫', '%', '/',
                  '7', '8', '9', '*',
                  '4', '5', '6', '-',
                  '1', '2', '3', '+',
                ];

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () => onButtonPressed(buttons[index]),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.secondary,
                      shape: const RoundedRectangleBorder(),
                      padding: const EdgeInsets.all(20),
                    ),
                    child: Text(
                      buttons[index],
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                  ),
                );
              },
            ),
            Row(
              children: [
                Expanded(
                  flex: 1, 
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () => onButtonPressed('0'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.secondary,
                        shape: const RoundedRectangleBorder(),
                        padding: const EdgeInsets.all(20),
                      ),
                      child: const Text(
                        '0',
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () => onButtonPressed('.'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.secondary,
                        shape: const RoundedRectangleBorder(),
                        padding: const EdgeInsets.all(20),
                      ),
                      child: const Text(
                        '.',
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () => onButtonPressed('='),
                      style: ElevatedButton.styleFrom(
                        backgroundColor:Theme.of(context).colorScheme.tertiary, 
                        shape: const RoundedRectangleBorder(),
                        padding: const EdgeInsets.all(20),
                      ),
                      child: const Text(
                        '=',
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}