import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/resources/themes.dart';
import 'core/routes/router.gr.dart';
import 'core/screens/home/home_screen.dart';
import 'features/games/result/presentation/screens/result_game_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Brain Flower',
      theme: appThemeData[AppTheme.LightTheme],
      darkTheme: appThemeData[AppTheme.DarkTheme],
      builder: ExtendedNavigator<Router>(router: Router()),
//            routes: {
//              Routes.homeScreen: (context) => HomeScreen(),
//              Routes.gamesScreen: (context) => GamesScreen(),
//              Routes.settingsScreen: (context) => SettingsScreen(),
//              Routes.moreLessGame: (context) => MoreLessGameScreen(),
//              Routes.findNumberGame: (context) => FindNumberGameScreen(),
//              Routes.dominoesGame: (context) => DominoesGameScreen(),
//              Routes.findObjectGame: (context) => FindObjectGameScreen(),
//              Routes.wateringFlowers: (context) => WateringFlowersGameScreen(),
//              Routes.mathMemoryGame: (context) => MathMemoryGameScreen(),
//              Routes.ufoShapesGame: (context) => UfoShapesGameScreen(),
//            },
//      home: ResultGameScreen(),
    );
  }
}
