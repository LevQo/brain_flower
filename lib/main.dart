import 'package:brain_flower/screens/find_number_game/find_number_game_screen.dart';
import 'package:brain_flower/screens/more_less_game/more_less_game_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FindNumberGameScreen(),
    );
  }
}