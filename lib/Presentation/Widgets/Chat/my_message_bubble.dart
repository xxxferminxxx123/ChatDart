import 'package:crudmodalfersus/Presentation/domain/dto/MessageDto.dart';
import 'package:flutter/material.dart';


class MyMessageBubble extends StatelessWidget {

  final Message message;

  const MyMessageBubble({
    super.key
    ,required this.message
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:  CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),),
            child: Padding(
               padding:const  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Text(
                message.text,
                style: const TextStyle(color: Colors.white)
              ),
            )
        ),
        const SizedBox(height: 10,),
      ],
    );
  }
}
