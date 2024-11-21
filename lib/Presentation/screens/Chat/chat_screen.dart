 import 'package:crudmodalfersus/Presentation/Widgets/Chat/my_message_bubble.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://larepublica.cronosmedia.glr.pe/migration/images/YYNAG7W2YBEXFCGWIBL6W6QZEY.jpg',
            ),
          ),
        ),
        title: const Text('Dayanita Locro TV'),
        centerTitle: false,
      ),
      // Cuerpo principal con fondo
      body: Stack(
        children: [
          // Fondo de pantalla
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://s0.smartresize.com/wallpaper/412/221/HD-wallpaper-gb-whatsapp-steven-gerrard-f-m-whatsapp-pattern.jpg',
                ),
                fit: BoxFit.cover, // Ajusta la imagen para cubrir toda la pantalla
              ),
            ),
          ),
          // Contenido superpuesto
          _ChatView(),
        ],
      ),
    );
  }
}
class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context,index){
                return MyMessageBubble();
            }
            ),
            )
          ],
        ),
      ),
    );
  }
}