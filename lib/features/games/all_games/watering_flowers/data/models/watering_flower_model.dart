import 'package:brain_flower/features/games/all_games/watering_flowers/data/models/flower_types_watering_flowers.dart';
import 'package:flutter/material.dart';

class WateringFlowerModel {
  final FlowerTypesWateringFlowers type;
  final int timeToDowngrade;
  final int position;

  const WateringFlowerModel({@required this.type, @required this.timeToDowngrade, @required this.position});
}
