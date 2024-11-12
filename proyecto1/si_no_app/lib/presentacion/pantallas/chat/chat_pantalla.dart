import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:si_no_app/dominio/entidades/mensajes.dart';
import 'package:si_no_app/presentacion/providers/chat_providers.dart';
import 'package:si_no_app/presentacion/widgets/chat/mi_mensaje_burbuja.dart';
import 'package:si_no_app/presentacion/widgets/chat/su_mensaje_burbuja.dart';
import 'package:si_no_app/presentacion/widgets/compartido/caja_de_texto.dart';

class ChatPantalla extends StatelessWidget {
  const ChatPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding( 
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.DSrGM14DpOumKcg53etYUAHaGJ?rs=1&pid=ImgDetMain'),
          ), 
        ), 
        title: const Text('Emilia'),
        centerTitle: false,
      ), 
      body: _ChatView(),
    ); 
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProviders = context.watch<ChatProviders>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column( 
          children: [
            Expanded( 
              child: ListView.builder(
                itemCount: chatProviders.mensajeLista.length,
                itemBuilder: (context, index) {
                  final mensaje = chatProviders.mensajeLista[index];

                  return (mensaje.deQuien == DeQuien.ella)
                      ? const SuMensajeBurbuja()
                      : MiMensajeBurbuja(mensaje: mensaje);
                },
              ), 
            ),
          
            CajadeTexto(
              onValue: chatProviders.sendMessage,
            ), 
          ],
        ), 
      ), 
    ); 
  }
}

