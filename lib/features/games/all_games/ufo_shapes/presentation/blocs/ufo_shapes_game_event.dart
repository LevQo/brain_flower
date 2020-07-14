import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ufo_shapes_game_event.freezed.dart';

@freezed
abstract class UfoShapesGameEvent with _$UfoShapesGameEvent {
  const factory UfoShapesGameEvent.initStartScreen() = _InitStartScreen;

  const factory UfoShapesGameEvent.shapeFinish(Widget shape) = ShapeFinish; //TODO remove [Widget]
}