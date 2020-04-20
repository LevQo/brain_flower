import 'package:flutter/cupertino.dart';

class MoreLessGameState {
  const MoreLessGameState();
}

class InitialStateMoreLess extends MoreLessGameState {
  const InitialStateMoreLess();
}

class GeneratedNumbersMoreLessState extends MoreLessGameState {
  final String firstNumber;
  final String secondNumber;
  final int score;
  final bool isCorrectAnswer;

  const GeneratedNumbersMoreLessState(
      {@required this.firstNumber,
      @required this.secondNumber,
      this.score,
      this.isCorrectAnswer});
}
