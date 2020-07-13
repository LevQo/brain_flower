import 'package:brain_flower/features/games/all_games/find_number/data/models/find_number_model.dart';
import 'package:flutter/material.dart';

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
