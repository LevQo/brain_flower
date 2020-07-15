import 'dart:async';

import 'package:brain_flower/core/resources/drawables.dart';
import 'package:brain_flower/features/games/all_games/watering_flowers/data/models/flower_types_watering_flowers.dart';
import 'package:brain_flower/features/games/all_games/watering_flowers/data/models/watering_flower_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:brain_flower/core/utils/extensions.dart';

class FlowerWateringGameWidget extends StatefulWidget {
  final WateringFlowerModel flower;
  final Function toWater;
  final Function toUpdate;

  const FlowerWateringGameWidget({@required this.flower, @required this.toWater, @required this.toUpdate})
      : assert(flower != null);

  @override
  _FlowerWateringGameWidgetState createState() => _FlowerWateringGameWidgetState();
}

class _FlowerWateringGameWidgetState extends State<FlowerWateringGameWidget> {
  Timer _timer;
  var startTime = 0;

  @override
  void initState() {
    _initTimer();
    super.initState();
  }

  @override
  void didUpdateWidget(FlowerWateringGameWidget oldWidget) {
    if (oldWidget.flower.type != widget.flower.type) {
      _initTimer();
    }
    super.didUpdateWidget(oldWidget);
  }

  void _initTimer() {
    startTime = 0;
    _timer = new Timer.periodic(
      Duration(seconds: 1),
      (Timer timer) {
        if (startTime * 1000 >= widget.flower.timeToDowngrade) {
          timer.cancel();
          widget.toUpdate();
        } else {
          startTime = startTime + 1;
        }
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _buildFlower(context);
  }

  Widget _buildFlower(BuildContext context) {
    return GestureDetector(
        onTap: () {
          _timer.cancel();
          widget.toWater();
        },
        child: Container(
          height: context.screenHeight * 0.1,
          width: context.screenWidth * 0.12,
          child: SvgPicture.asset(
            widget.flower.type == FlowerTypesWateringFlowers.HEALTHY
                ? Drawables.healthyFlower
                : Drawables.wiltedFlower,
            fit: BoxFit.fitHeight,
          ),
        ));
  }
}
