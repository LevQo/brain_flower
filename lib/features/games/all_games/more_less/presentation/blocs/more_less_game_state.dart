import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'more_less_game_state.freezed.dart';

@freezed
abstract class MoreLessGameState with _$MoreLessGameState {
  const factory MoreLessGameState.initial() = _Initial;

  const factory MoreLessGameState.generatedNumbers(
      {@required String firstNumber,
      @required String secondNumber,
      int scores,
      bool isCorrectAnswer}) = GeneratedNumbers;
}