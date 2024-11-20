import 'package:flutter/material.dart';

const Color _customColor =Color.fromARGB(255, 172, 125, 248);
const List<Color> _colorThemes =[
  _customColor,
  Colors.blue,
  Colors.orange
];

class AppTheme {

  ThemeData theme (){
    return ThemeData(
      useMaterial3: true
    );
  }
}