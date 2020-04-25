import 'package:brain_flower/data/find_number_game/find_number_model.dart';
import 'package:flutter/cupertino.dart';

class FindNumberGameState {
  const FindNumberGameState();
}

class InitialStateFindNumber extends FindNumberGameState {
  const InitialStateFindNumber();
}

class GeneratedNumbersFindNumberState extends FindNumberGameState {
  final int numberToSearch;
  final List<FindNumberModel> numbers;
  final int scores;
  final bool isCorrectAnswer;

  GeneratedNumbersFindNumberState(
      {@required this.numberToSearch,
      @required this.numbers,
      this.scores,
      this.isCorrectAnswer});
}
