import 'package:crudmodalfersus/Presentation/config/helpers/get_yes_no_anwser.dart';
import 'package:crudmodalfersus/Presentation/domain/dto/MessageDto.dart';
import 'package:flutter/material.dart';


class ChatProvider extends ChangeNotifier{

  final ScrollController chatScrollController = ScrollController();
  final yesNoAnwers= GetYesNoAnwser();

  List <Message> message =[
    Message(text: 'Hola profe', fromWho: FromWho.mine),
    Message(text: 'Que tal mi estimado , que se te ofrece?', fromWho: FromWho.hers),
  ];

  Future<void> sendMessage(String text) async{
    if(text.isEmpty )return;
    final newMessage = Message(text: text, fromWho: FromWho.mine);
    message.add(newMessage);

    if(text.endsWith('?')){
      herReply();
    }

    notifyListeners(); 
    await moveScrolToBottom();
  }
  Future<void> herReply() async{
    final herMessage =await yesNoAnwers.getAnswer();
    message.add(herMessage);
    notifyListeners();
    moveScrolToBottom();
  }
  Future<void> moveScrolToBottom() async{
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent
      , duration: const Duration(milliseconds: 300)
      , curve: Curves.ease
      );
  }
}