import 'package:flutter/material.dart';


class MyMessageBubble extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:  CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Text(
                'Donde mierda estas arenosa mi amor ?',
                style:TextStyle(color: Colors.white)
              ),
            )
        ),
        const SizedBox(height: 10,)
      ],
    );
  }
}