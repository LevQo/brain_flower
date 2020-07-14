import 'package:auto_route/auto_route_annotations.dart';
import 'package:brain_flower/core/screens/home/home_screen.dart';
import 'package:brain_flower/features/games/all_games/dominoes/presentation/screens/dominoes_game_screen.dart';
import 'package:brain_flower/features/games/all_games/find_number/presentation/screens/find_number_game_screen.dart';
import 'package:brain_flower/features/games/all_games/find_object/presentation/screens/find_object_game_screen.dart';
import 'package:brain_flower/features/games/all_games/math_memory/presentation/screens/math_memory_game_screen.dart';
import 'package:brain_flower/features/games/all_games/more_less/presentation/screens/more_less_game_screen.dart';
import 'package:brain_flower/features/games/all_games/ufo_shapes/presentation/screens/ufo_shapes_game_screen.dart';
import 'package:brain_flower/features/games/all_games/watering_flowers/presentation/screens/watering_flowers_game_screen.dart';
import 'package:brain_flower/features/games/result/presentation/screens/result_game_screen.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  HomeScreen home;

  // Games
  @MaterialRoute()
  DominoesGameScreen dominoesGame;
  @MaterialRoute()
  FindNumberGameScreen findNumberGame;
  @MaterialRoute()
  FindObjectGameScreen findObjectGame;
  @MaterialRoute()
  MathMemoryGameScreen mathMemoryGame;
  @MaterialRoute()
  MoreLessGameScreen moreLessGame;
  @MaterialRoute()
  UfoShapesGameScreen ufoShapesGame;
  @MaterialRoute()
  WateringFlowersGameScreen wateringFlowersGame;

  @MaterialRoute()
  ResultGameScreen resultGame;
}