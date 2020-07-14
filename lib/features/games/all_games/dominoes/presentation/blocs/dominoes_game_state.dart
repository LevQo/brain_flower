import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dominoes_game_state.freezed.dart';

@freezed
abstract class DominoesGameState with _$DominoesGameState {
  const factory DominoesGameState.initial() = _Initial;

  const factory DominoesGameState.generatedDominoes(
      {@required List<bool> firstDominoDots,
      @required List<bool> secondDominoDots,
      @required List<List<bool>> dominoesForAnswer,
      @required int correctAnswerPosition,
      int scores,
      bool isCorrectAnswer}) = GeneratedDominoes;
}
