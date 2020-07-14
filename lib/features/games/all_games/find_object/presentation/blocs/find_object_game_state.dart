import 'package:brain_flower/features/games/all_games/find_object/data/models/find_object_model.dart';
import 'package:brain_flower/features/games/all_games/find_object/data/models/find_objects_game_types.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'find_object_game_state.freezed.dart';

@freezed
abstract class FindObjectGameState with _$FindObjectGameState {
  const factory FindObjectGameState.initial() = _Initial;

  const factory FindObjectGameState.generatedObjects(
      {@required FindObjectModel objectToSearch,
      @required FindObjectGameTypes typeOfSearch,
      @required List<FindObjectModel> objects,
      @required String colorText,
      int scores,
      bool isCorrectAnswer}) = GeneratedObjects;
}
