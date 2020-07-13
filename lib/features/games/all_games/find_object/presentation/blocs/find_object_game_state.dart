import 'package:brain_flower/features/games/all_games/find_object/data/models/find_object_model.dart';
import 'package:brain_flower/features/games/all_games/find_object/data/models/find_objects_game_types.dart';
import 'package:flutter/cupertino.dart';

class FindObjectGameState {
  const FindObjectGameState();
}

class InitialStateFindObject extends FindObjectGameState {
  const InitialStateFindObject();
}

class GeneratedObjectsState extends FindObjectGameState {
  final FindObjectModel objectToSearch;
  final FindObjectGameTypes typeOfSearch;
  final List<FindObjectModel> objects;
  final String colorText;
  final int scores;
  final bool isCorrectAnswer;

  GeneratedObjectsState(
      {@required this.objectToSearch,
      @required this.typeOfSearch,
      @required this.objects,
      @required this.colorText,
      this.scores,
      this.isCorrectAnswer});
}
