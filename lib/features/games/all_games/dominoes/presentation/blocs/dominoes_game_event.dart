import 'package:freezed_annotation/freezed_annotation.dart';

part 'dominoes_game_event.freezed.dart';

@freezed
abstract class DominoesGameEvent with _$DominoesGameEvent{
  const factory DominoesGameEvent.initStartScreen() = _InitStartScreen;
  const factory DominoesGameEvent.selectDomino({@required bool isCorrectAnswer}) = _SelectDomino;
}