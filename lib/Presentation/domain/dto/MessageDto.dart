import 'package:flutter/material.dart';

enum FromWho {mine,hers}

class Message{

  final String text;
  final FromWho fromWho;
  
  Message({
    required this.text,
    required this.fromWho
  });

}