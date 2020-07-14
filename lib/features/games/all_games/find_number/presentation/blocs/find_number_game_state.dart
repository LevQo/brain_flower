import 'package:brain_flower/features/games/all_games/find_number/data/models/find_number_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'find_number_game_state.freezed.dart';

@freezed
abstract class FindNumberGameState with _$FindNumberGameState {
  const factory FindNumberGameState.initial() = _Initial;

  const factory FindNumberGameState.generatedNumbers(
      {@required int numberToSearch,
      @required List<FindNumberModel> numbers,
      int scores,
      bool isCorrectAnswer}) = GeneratedNumbers;
}