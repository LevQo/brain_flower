import 'package:brain_flower/features/games/all_games/math_memory/data/models/math_game_card_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'math_memory_game_state.freezed.dart';

@freezed
abstract class MathMemoryGameState with _$MathMemoryGameState {
  const factory MathMemoryGameState.initial() = _Initial;

  const factory MathMemoryGameState.generatedMathCards(
      {@required MathGameCardModel currentNumber,
      @required MathGameCardModel nextNumber,
      int correctNumber,
      int scores,
      bool isCorrectAnswer}) = GeneratedMathCards;
}