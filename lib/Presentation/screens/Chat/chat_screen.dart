 import 'package:crudmodalfersus/Presentation/Widgets/Chat/her_message_bubble.dart';
 import 'package:crudmodalfersus/Presentation/Widgets/Chat/my_message_bubble.dart';
import 'package:crudmodalfersus/Presentation/Widgets/MessageBox/message_field_box.dart';
import 'package:crudmodalfersus/Presentation/domain/dto/MessageDto.dart';
import 'package:crudmodalfersus/Presentation/domain/providers/chat_provider.dart';
import 'package:crudmodalfersus/main.dart';
 import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
              'https://scontent.ftru1-1.fna.fbcdn.net/v/t1.18169-9/15317829_10158131750840001_6928324387150989640_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=7b2446&_nc_eui2=AeHOU6I8Bc8e9CEBlFaL156p6VGZXU_BfMXpUZldT8F8xWbkn-zRe82KsCxsCdZNdHWHAL3_-m5j3KOqq4q5a2Ow&_nc_ohc=q2MOsXeOoxkQ7kNvgHlEq4j&_nc_zt=23&_nc_ht=scontent.ftru1-1.fna&oh=00_AYD_K5STJzP-1N-jvhOxzrOsFi50En28fz8sZyXROMY89w&oe=676CA8D2',
            ),
          ),
        ),
        title: const Text('Paul Corcuera Jose Maria Profe'),
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

    final chatProvider =context.watch<ChatProvider>();
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              controller: chatProvider.chatScrollController,
              itemCount: chatProvider.message.length,
              itemBuilder: (context,index){
                  final message= chatProvider.message[index];
                  return (message.fromWho==FromWho.hers)
                  ?  HerMessageBubble(message:message)
                  :  MyMessageBubble( message:message);
                }
            ),
            ),
            MessageFieldBox(
              onValue: (value) => chatProvider.sendMessage(value),

            )
          ],
        ),
      ),
    );
  }
}