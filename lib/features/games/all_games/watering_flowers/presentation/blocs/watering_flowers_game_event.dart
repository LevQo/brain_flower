import 'package:brain_flower/features/games/all_games/watering_flowers/data/models/watering_flower_model.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'watering_flowers_game_event.freezed.dart';

@freezed
abstract class WateringFlowersGameEvent with _$WateringFlowersGameEvent {
  const factory WateringFlowersGameEvent.initStartScreen() = _InitStartScreen;
  const factory WateringFlowersGameEvent.toWaterFlower({@required WateringFlowerModel flower}) = _ToWaterFlower;
  const factory WateringFlowersGameEvent.toUpdateFlower({@required WateringFlowerModel flower}) = _ToUpdateFlower;
}