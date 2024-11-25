import 'package:flutter/material.dart';


class HerMessageBubble extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:  CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Text(
                'segundo texto',
                style:TextStyle(color: Colors.black)
              ),
            )
        ),
        const SizedBox(height: 10,),
        _ImageBumbleSecond( )
      ],
    );
  }
}

class _ImageBumbleSecond extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius:BorderRadius.circular(20),
      child: Image.network(
        'https://i.pinimg.com/originals/eb/2a/8f/eb2a8f4ddfb50c23712a3cd0d5cc2a3a.gif',
        width: size.width*0.7,
        height: 50,
        // fit: BoxFit.cover,        loadingBuilder: (context,child,loadingProgress){
        //   if(loadingProgress== null) return child;
        //   return Container(
        //     width: size.width *0.7,
        //     height: 150,
        //     padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        //     child: const Text('Mi amor estoy enviando una imagen '),
        //   );
        // },

      ),

    );
  }
}