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
      @required bool isCorrectAnswer,
      @required int scores}) = GeneratedDominoes;
}

//class DominoesGameState {
//  const DominoesGameState();
//}
//
//class InitialStateDominoesGame extends DominoesGameState {
//  const InitialStateDominoesGame();
//}
//
//class GeneratedDominoesState extends DominoesGameState {
//  final List<bool> firstDominoDots;
//  final List<bool> secondDominoDots;
//  final List<List<bool>> dominoesForAnswer;
//  final int correctAnswerPosition;
//  final bool isCorrectAnswer;
//  final int scores;
//
//  GeneratedDominoesState(
//      {@required this.firstDominoDots,
//      @required this.secondDominoDots,
//      @required this.dominoesForAnswer,
//      @required this.correctAnswerPosition,
//      @required this.isCorrectAnswer,
//      @required this.scores});
//}
