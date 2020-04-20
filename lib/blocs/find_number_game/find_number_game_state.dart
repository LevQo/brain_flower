import 'package:brain_flower/data/find_number_game/FindNumberModel.dart';
import 'package:flutter/cupertino.dart';

class FindNumberGameState {
  const FindNumberGameState();
}

class InitialStateFindNumber extends FindNumberGameState {
  const InitialStateFindNumber();
}

class GeneratedNumbersFindNumber extends FindNumberGameState {
  final List<FindNumberModel> numbers;
  final int score;
  final bool isCorrectAnswer;

  GeneratedNumbersFindNumber(
      {@required this.numbers, this.score, this.isCorrectAnswer});
}
