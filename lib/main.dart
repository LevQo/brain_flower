import 'package:brain_flower/screens/dominoes_game/dominoes_game_screen.dart';
import 'package:brain_flower/screens/find_number_game/find_number_game_screen.dart';
import 'package:brain_flower/screens/games_screen/games_screen.dart';
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
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
//            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          }
        )
      ),
      home: FindNumberGameScreen(),
      initialRoute: '/dominoes_game',
      routes: {
        '/games': (context) => GamesScreen(),
        '/more_less_game': (context) => MoreLessGameScreen(),
        '/find_number_game': (context) => FindNumberGameScreen(),
        '/dominoes_game': (context) => DominoesGameScreen()
      },
    );
  }
}
