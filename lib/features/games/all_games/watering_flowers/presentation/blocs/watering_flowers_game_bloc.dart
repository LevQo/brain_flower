import 'dart:async';
import 'dart:math';

import 'package:brain_flower/features/games/all_games/watering_flowers/data/models/flower_types_watering_flowers.dart';
import 'package:brain_flower/features/games/all_games/watering_flowers/data/models/watering_flower_model.dart';
import 'package:brain_flower/features/games/all_games/watering_flowers/presentation/blocs/watering_flowers_game_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'watering_flowers_game_event.dart';

class WateringFlowersGameBloc extends Bloc<WateringFlowersGameEvent, WateringFlowersGameState> {
  final _random = Random();

  @override
  WateringFlowersGameState get initialState => WateringFlowersGameState.initial();

  @override
  Stream<WateringFlowersGameState> mapEventToState(WateringFlowersGameEvent event) async* {
    yield* event.when(initStartScreen: () async* {
      yield* _mapEventToStartScreen();
    }, toWaterFlower: (flower) async* {
      yield* _mapEventToWaterFlowerState(flower);
    }, toUpdateFlower: (flower) async* {
      yield* _mapEventToUpdatedState(flower);
    });
  }

  Stream<WateringFlowersGameState> _mapEventToStartScreen() async* {
    var flowers = await _generateFlowers();

    yield WateringFlowersGameState.updatedFlower(flowers: flowers, scores: 0, isCorrectAnswer: null);
  }

  Future<List<WateringFlowerModel>> _generateFlowers() async {
    final flowers = <WateringFlowerModel>[];
    for (int i = 0; i < 12; i++) {
      final timeToDownGrade = (1000 + _random.nextInt(10000 - 1000));
      var flower = WateringFlowerModel(
          type: FlowerTypesWateringFlowers.HEALTHY, timeToDowngrade: timeToDownGrade, position: i);
      flowers.add(flower);
    }

    return flowers;
  }

  Stream<WateringFlowersGameState> _mapEventToUpdatedState(WateringFlowerModel flower) async* {
    var flowers = <WateringFlowerModel>[];
    var scores = 0;
    var isCorrectAnswer;

    final currentState = state;
    if (currentState is UpdatedFlower) {
      flowers = currentState.flowers;
      scores = currentState.scores;
      var type = flower.type;

      if (type == FlowerTypesWateringFlowers.HEALTHY) {
        type = FlowerTypesWateringFlowers.WILTED;
      } else {
        type = FlowerTypesWateringFlowers.HEALTHY;
        if (currentState.scores > 0) {
          scores = currentState.scores - 50;
        }
      }

      flowers[flower.position] =
          WateringFlowerModel(type: type, timeToDowngrade: flower.timeToDowngrade, position: flower.position);
    }

    yield WateringFlowersGameState.updatedFlower(flowers: flowers, scores: scores, isCorrectAnswer: isCorrectAnswer);
  }

  Stream<WateringFlowersGameState> _mapEventToWaterFlowerState(WateringFlowerModel flower) async* {
    var flowers = <WateringFlowerModel>[];
    var scores = 0;
    var isCorrectAnswer;
    int timeToDowngrade;

    final currentState = state;
    if (currentState is UpdatedFlower) {
      flowers = currentState.flowers;
      scores = currentState.scores;
      timeToDowngrade = flower.timeToDowngrade;
      var type = flower.type;

      if (type == FlowerTypesWateringFlowers.HEALTHY) {
        if (scores > 0) {
          scores -= 50;
        }
      } else {
        timeToDowngrade = timeToDowngrade ~/ 2;
        if (timeToDowngrade < 1000) {
          timeToDowngrade = 1000;
        }
        scores += 50;
        type = FlowerTypesWateringFlowers.HEALTHY;
      }

      flowers[flower.position] =
          WateringFlowerModel(type: type, timeToDowngrade: timeToDowngrade, position: flower.position);
    }

    yield WateringFlowersGameState.updatedFlower(flowers: flowers, scores: scores, isCorrectAnswer: isCorrectAnswer);
  }
}
