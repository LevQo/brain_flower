import 'package:brain_flower/screens/dominoes_game/dominoes_game_screen.dart';
import 'package:brain_flower/screens/find_number_game/find_number_game_screen.dart';
import 'package:brain_flower/screens/find_object_game/find_object_game_screen.dart';
import 'package:brain_flower/screens/games_screen/games_screen.dart';
import 'package:brain_flower/screens/math_memory_game/math_memory_game_screen.dart';
import 'package:brain_flower/screens/more_less_game/more_less_game_screen.dart';
import 'package:brain_flower/screens/watering_flowers_game/watering_flowers_game_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Brain Flower',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          pageTransitionsTheme: PageTransitionsTheme(builders: {
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          })),
      initialRoute: '/watering_flowers_game',
      routes: {
        '/games': (context) => GamesScreen(),
        '/more_less_game': (context) => MoreLessGameScreen(),
        '/find_number_game': (context) => FindNumberGameScreen(),
        '/dominoes_game': (context) => DominoesGameScreen(),
        '/find_object_game': (context) => FindObjectGameScreen(),
        '/watering_flowers_game': (context) => WateringFlowersGameScreen(),
        '/math_memory_game': (context) => MathMemoryGameScreen(),
      },
    );
  }
}
