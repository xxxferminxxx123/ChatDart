 import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding:  EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage:  NetworkImage('https://i.pinimg.com/236x/6f/37/42/6f37425a7b8bdc754708ab4b73959a21.jpg'),
          ),
        ),
        title: const Text('Nina Uzumaki Kalifa'),
        centerTitle: false,
      ),
    );
  }
}