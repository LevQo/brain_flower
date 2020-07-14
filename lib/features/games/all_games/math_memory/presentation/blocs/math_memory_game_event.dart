import 'package:freezed_annotation/freezed_annotation.dart';

part 'math_memory_game_event.freezed.dart';

@freezed
abstract class MathMemoryGameEvent with _$MathMemoryGameEvent{
  const factory MathMemoryGameEvent.initStartScreen() = _InitStartScreen;
  const factory MathMemoryGameEvent.toAnswer({@required int number}) = _ToAnswer;
}
