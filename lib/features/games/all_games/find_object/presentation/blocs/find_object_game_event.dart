import 'package:brain_flower/features/games/all_games/find_object/data/models/find_object_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'find_object_game_event.freezed.dart';

@freezed
abstract class FindObjectGameEvent with _$FindObjectGameEvent{
  const factory FindObjectGameEvent.initStartScreen() = _InitStartScreen;
  const factory FindObjectGameEvent.selectObject({@required FindObjectModel object}) = _SelectObject;
}
