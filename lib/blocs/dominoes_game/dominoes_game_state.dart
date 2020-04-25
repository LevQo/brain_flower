import 'package:flutter/cupertino.dart';

class DominoesGameState {
  const DominoesGameState();
}

class InitialStateDominoesGame extends DominoesGameState {
  const InitialStateDominoesGame();
}

class GeneratedDominoesState extends DominoesGameState {
  final List<bool> firstDominoDots;
  final List<bool> secondDominoDots;
  final List<List<bool>> dominoesForAnswer;
  final int correctAnswerPosition;
  final bool isCorrectAnswer;
  final int scores;

  GeneratedDominoesState(
      {@required this.firstDominoDots,
      @required this.secondDominoDots,
      @required this.dominoesForAnswer,
      @required this.correctAnswerPosition,
      @required this.isCorrectAnswer,
      @required this.scores});
}
