import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ufo_shapes_game_state.freezed.dart';

@freezed
abstract class UfoShapesGameState with _$UfoShapesGameState {
  const factory UfoShapesGameState.addNewShape({@required List<Widget> shapes}) = AddNewShape;
}
