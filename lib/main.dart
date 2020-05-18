import 'package:brain_flower/resources/routes.dart';
import 'package:brain_flower/resources/themes.dart';
import 'package:brain_flower/screens/dominoes_game/dominoes_game_screen.dart';
import 'package:brain_flower/screens/find_number_game/find_number_game_screen.dart';
import 'package:brain_flower/screens/find_object_game/find_object_game_screen.dart';
import 'package:brain_flower/screens/games_screen/games_screen.dart';
import 'package:brain_flower/screens/home_screen/home_screen.dart';
import 'package:brain_flower/screens/math_memory_game/math_memory_game_screen.dart';
import 'package:brain_flower/screens/more_less_game/more_less_game_screen.dart';
import 'package:brain_flower/screens/settings_screen/settings_screen.dart';
import 'package:brain_flower/screens/ufo_shapes_game/ufo_shapes_game_screen.dart';
import 'package:brain_flower/screens/watering_flowers_game/watering_flowers_game_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Brain Flower',
      theme: appThemeData[AppTheme.LightTheme],
      darkTheme: appThemeData[AppTheme.DarkTheme],
      initialRoute: Routes.homeScreen,
      routes: {
        Routes.homeScreen: (context) => HomeScreen(),
        Routes.gamesScreen: (context) => GamesScreen(),
        Routes.settingsScreen: (context) => SettingsScreen(),
        Routes.moreLessGame: (context) => MoreLessGameScreen(),
        Routes.findNumberGame: (context) => FindNumberGameScreen(),
        Routes.dominoesGame: (context) => DominoesGameScreen(),
        Routes.findObjectGame: (context) => FindObjectGameScreen(),
        Routes.wateringFlowers: (context) => WateringFlowersGameScreen(),
        Routes.mathMemoryGame: (context) => MathMemoryGameScreen(),
        Routes.ufoShapesGame: (context) => UfoShapesGameScreen(),
      },
    );
  }
}
