import 'package:flutter/material.dart';
import 'package:si_no_app/dominio/entidades/mensajes.dart';

class MiMensajeBurbuja extends StatelessWidget{
  final Mensaje mensaje;
  const MiMensajeBurbuja({super.key, required this.mensaje});
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: colors.primary,
          ),
          child:const Padding(
            padding: EdgeInsets.symmetric(horizontal:20, vertical:10),
            child: Text('Mensaje de chat', style: TextStyle(color: Colors.white)),
          )
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}