import 'package:brain_flower/features/games/all_games/watering_flowers/data/models/watering_flower_model.dart';

class WateringFlowersGameState {
  const WateringFlowersGameState();
}

class InitialWateringFlowersGameStateState extends WateringFlowersGameState {}

class UpdatedWateringFlowersState extends WateringFlowersGameState {
  final List<WateringFlowerModel> flowers;
  final bool isCorrectAnswer;
  final int scores;

  UpdatedWateringFlowersState(
      {this.flowers, this.isCorrectAnswer, this.scores});
}
