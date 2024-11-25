import 'package:crudmodalfersus/Presentation/domain/dto/MessageDto.dart';
import 'package:flutter/material.dart';


class ChatProvider extends ChangeNotifier{

  List <Message> message =[
    Message(text: 'Hola amor !', fromWho: FromWho.mine),
    Message(text: 'ya regresate del trabajo?', fromWho: FromWho.hers),
  ];

  Future<void> sendMessage(String text) async{
    final newMessage = Message(text: text, fromWho: FromWho.mine);
    message.add(newMessage);
    notifyListeners(); 
  }
}