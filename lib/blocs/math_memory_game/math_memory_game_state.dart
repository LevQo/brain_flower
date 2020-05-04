import 'package:brain_flower/data/math_memory_game/MathGameCardModel.dart';

class MathMemoryGameState {
  const MathMemoryGameState();
}

class InitialStateMathMemoryGame extends MathMemoryGameState {
  const InitialStateMathMemoryGame();
}

class GeneratedMathCardsState extends MathMemoryGameState {
  final MathGameCardModel currentNumber;
  final MathGameCardModel nextNumber;
  final int correctNumber;
  final int scores;
  final bool isCorrectAnswer;

  GeneratedMathCardsState(
      {this.currentNumber,
      this.nextNumber,
      this.correctNumber,
      this.scores,
      this.isCorrectAnswer});
}
