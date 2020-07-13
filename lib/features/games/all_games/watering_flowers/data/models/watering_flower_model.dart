import 'package:brain_flower/features/games/all_games/watering_flowers/data/models/flower_types_watering_flowers.dart';

class WateringFlowerModel{
  final FlowerTypesWateringFlowers type;
  final int timeToDowngrade;
  final int position;

  WateringFlowerModel(this.type, this.timeToDowngrade, this.position);
}