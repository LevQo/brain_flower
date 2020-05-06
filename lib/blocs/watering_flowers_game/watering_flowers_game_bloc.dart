import 'dart:math';

import 'package:brain_flower/blocs/watering_flowers_game/watering_flowers_game_event.dart';
import 'package:brain_flower/blocs/watering_flowers_game/watering_flowers_game_state.dart';
import 'package:brain_flower/data/watering_flowers_game/flower_types_watering_flowers.dart';
import 'package:brain_flower/data/watering_flowers_game/watering_flower_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WateringFlowersGameBloc
    extends Bloc<WateringFlowersGameEvent, WateringFlowersGameState> {
  final _random = Random();

  @override
  WateringFlowersGameState get initialState =>
      InitialWateringFlowersGameStateState();

  @override
  Stream<WateringFlowersGameState> mapEventToState(
      WateringFlowersGameEvent event) async* {
    if (event is InitStartScreenWateringFlowers) {
      yield* _mapEventToStartScreen();
    } else if (event is ToUpdateFlowerGameEvent) {
      yield* _mapEventToUpdatedState(event);
    } else if (event is ToWaterFlowerGameEvent) {
      yield* _mapEventToWaterFlowerState(event);
    }
  }

  Stream<UpdatedWateringFlowersState> _mapEventToStartScreen() async* {
    var flowers = await _generateFlowers();

    yield UpdatedWateringFlowersState(
        flowers: flowers, scores: 0, isCorrectAnswer: null);
  }

  Future<List<WateringFlowerModel>> _generateFlowers() async {
    final flowers = <WateringFlowerModel>[];
    for (int i = 0; i < 12; i++) {
      final timeToDownGrade = (2 + _random.nextInt(40 - 2));
      var flower = WateringFlowerModel(
          FlowerTypesWateringFlowers.HEALTHY, timeToDownGrade, i);
      flowers.add(flower);
    }
    return flowers;
  }

  Stream<UpdatedWateringFlowersState> _mapEventToUpdatedState(
      ToUpdateFlowerGameEvent event) async* {
    var flowers = <WateringFlowerModel>[];
    var scores = 0;
    var isCorrectAnswer;

    final currentState = state;
    if (currentState is UpdatedWateringFlowersState) {
      flowers = currentState.flowers;
      scores = currentState.scores;
      var type = event.flower.type;

      if (type == FlowerTypesWateringFlowers.HEALTHY) {
        type = FlowerTypesWateringFlowers.WILTED;
      } else {
        type = FlowerTypesWateringFlowers.HEALTHY;
        if (currentState.scores > 0) {
          scores = currentState.scores - 50;
        }
      }

      flowers[event.flower.position] = WateringFlowerModel(
          type, event.flower.timeToDowngrade, event.flower.position);
    }

    yield UpdatedWateringFlowersState(
        flowers: flowers, scores: scores, isCorrectAnswer: isCorrectAnswer);
  }

  Stream<UpdatedWateringFlowersState> _mapEventToWaterFlowerState(
      ToWaterFlowerGameEvent event) async* {
    var flowers = <WateringFlowerModel>[];
    var scores = 0;
    var isCorrectAnswer;
    var timeToDowngrade;

    final currentState = state;
    if (currentState is UpdatedWateringFlowersState) {
      flowers = currentState.flowers;
      scores = currentState.scores;
      timeToDowngrade = event.flower.timeToDowngrade;
      var type = event.flower.type;

      if (type == FlowerTypesWateringFlowers.HEALTHY) {
        if (scores > 0) {
          scores -= 50;
        }
      } else {
        timeToDowngrade = timeToDowngrade / 10;
        scores += 50;
        type = FlowerTypesWateringFlowers.HEALTHY;
      }

      flowers[event.flower.position] = WateringFlowerModel(
          type, event.flower.timeToDowngrade, event.flower.position);
    }

    yield UpdatedWateringFlowersState(
        flowers: flowers, scores: scores, isCorrectAnswer: isCorrectAnswer);
  }
}
