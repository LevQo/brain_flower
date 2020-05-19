import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomColors {
  const CustomColors._();

  static const List<Color> arrayColors = [ //TODO
    Colors.green,
    Colors.red,
    Colors.blueAccent,
    Colors.greenAccent,
    Colors.deepPurple,
    Colors.purple,
    Colors.teal,
    Colors.pink,
    Colors.lightBlue,
    Colors.orange,
    Colors.black54
  ];

  static const Color primaryColor = Color(0xFF1CB981);
  static const Color greenLayerBackgroundColor = Color(0xFF53CAA0);

  //Dark Theme Colors
  static const Color backgroundDarkColor = Color(0xFF222328);
  static const Color backgroundGameDarkColor = Color(0xFF26272B);
  static const Color bottomNavigationDarkColor = Color(0xFF26272B);

  static const Color defaultTextColor = Color(0xFF676570);
  static const Color defaultShadowColor = Color(0x33110D1C);
  static const Color shadowDarkColor = Color(0x1A110D1C);
  static const Color timerColor = Color(0x4DFFFFFF);

  //More Less Game
  static const Color backgroundMoreLessColor = Color(0xFF3E60D6); //TODO REMOVE
  static const Color buttonMoreLessColor = Color(0xFF3ED6B1);

  //Find Number Game
  static const Color backgroundFindNumberColor = Color(0xFFD63E63); //TODO REMOVE

  //Math Memory Game
  static const Color kCardMathMemoryColor = Color(0xFF591DBC);
}
