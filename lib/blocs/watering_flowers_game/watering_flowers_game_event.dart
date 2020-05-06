import 'package:brain_flower/data/watering_flowers_game/watering_flower_model.dart';
import 'package:equatable/equatable.dart';

class WateringFlowersGameEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class InitStartScreenWateringFlowers extends WateringFlowersGameEvent{
  @override
  List<Object> get props => super.props;
}

class ToWaterFlowerGameEvent extends WateringFlowersGameEvent {
  final WateringFlowerModel flower;

  ToWaterFlowerGameEvent(this.flower);

  @override
  List<Object> get props => [this.flower];
}

class ToUpdateFlowerGameEvent extends WateringFlowersGameEvent {
  final WateringFlowerModel flower;

  ToUpdateFlowerGameEvent(this.flower);

  @override
  List<Object> get props => [this.flower];
}
