import 'package:brain_flower/features/games/all_games/watering_flowers/data/models/watering_flower_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'watering_flowers_game_state.freezed.dart';

@freezed
abstract class WateringFlowersGameState with _$WateringFlowersGameState {
  const factory WateringFlowersGameState.initial() = _Initial;

  const factory WateringFlowersGameState.updatedFlower(
      {@required List<WateringFlowerModel> flowers, int scores, bool isCorrectAnswer}) = UpdatedFlower;
}