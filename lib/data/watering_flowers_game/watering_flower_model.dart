import 'package:brain_flower/data/watering_flowers_game/flower_types_watering_flowers.dart';

class WateringFlowerModel{
  final FlowerTypesWateringFlowers type;
  final int timeToDowngrade;
  final int position;

  WateringFlowerModel(this.type, this.timeToDowngrade, this.position);
}