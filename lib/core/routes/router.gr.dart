// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:brain_flower/core/screens/home/home_screen.dart';
import 'package:brain_flower/features/games/all_games/dominoes/presentation/screens/dominoes_game_screen.dart';
import 'package:brain_flower/features/games/all_games/find_number/presentation/screens/find_number_game_screen.dart';
import 'package:brain_flower/features/games/all_games/find_object/presentation/screens/find_object_game_screen.dart';
import 'package:brain_flower/features/games/all_games/math_memory/presentation/screens/math_memory_game_screen.dart';
import 'package:brain_flower/features/games/all_games/more_less/presentation/screens/more_less_game_screen.dart';
import 'package:brain_flower/features/games/all_games/ufo_shapes/presentation/screens/ufo_shapes_game_screen.dart';
import 'package:brain_flower/features/games/all_games/watering_flowers/presentation/screens/watering_flowers_game_screen.dart';
import 'package:brain_flower/features/games/result/presentation/screens/result_game_screen.dart';

abstract class Routes {
  static const home = '/';
  static const dominoesGame = '/dominoes-game';
  static const findNumberGame = '/find-number-game';
  static const findObjectGame = '/find-object-game';
  static const mathMemoryGame = '/math-memory-game';
  static const moreLessGame = '/more-less-game';
  static const ufoShapesGame = '/ufo-shapes-game';
  static const wateringFlowersGame = '/watering-flowers-game';
  static const resultGame = '/result-game';
  static const all = {
    home,
    dominoesGame,
    findNumberGame,
    findObjectGame,
    mathMemoryGame,
    moreLessGame,
    ufoShapesGame,
    wateringFlowersGame,
    resultGame,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute<dynamic>(
          builder: (context) => HomeScreen(),
          settings: settings,
        );
      case Routes.dominoesGame:
        return MaterialPageRoute<dynamic>(
          builder: (context) => DominoesGameScreen(),
          settings: settings,
        );
      case Routes.findNumberGame:
        return MaterialPageRoute<dynamic>(
          builder: (context) => FindNumberGameScreen(),
          settings: settings,
        );
      case Routes.findObjectGame:
        return MaterialPageRoute<dynamic>(
          builder: (context) => FindObjectGameScreen(),
          settings: settings,
        );
      case Routes.mathMemoryGame:
        return MaterialPageRoute<dynamic>(
          builder: (context) => MathMemoryGameScreen(),
          settings: settings,
        );
      case Routes.moreLessGame:
        return MaterialPageRoute<dynamic>(
          builder: (context) => MoreLessGameScreen(),
          settings: settings,
        );
      case Routes.ufoShapesGame:
        return MaterialPageRoute<dynamic>(
          builder: (context) => UfoShapesGameScreen(),
          settings: settings,
        );
      case Routes.wateringFlowersGame:
        return MaterialPageRoute<dynamic>(
          builder: (context) => WateringFlowersGameScreen(),
          settings: settings,
        );
      case Routes.resultGame:
        if (hasInvalidArgs<ResultGameScreenArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<ResultGameScreenArguments>(args);
        }
        final typedArgs = args as ResultGameScreenArguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) => ResultGameScreen(
              scores: typedArgs.scores,
              routeForRestart: typedArgs.routeForRestart),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//ResultGameScreen arguments holder class
class ResultGameScreenArguments {
  final int scores;
  final String routeForRestart;
  ResultGameScreenArguments({this.scores = 0, @required this.routeForRestart});
}
