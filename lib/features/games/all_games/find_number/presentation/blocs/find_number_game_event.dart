import 'package:freezed_annotation/freezed_annotation.dart';

part 'find_number_game_event.freezed.dart';

@freezed
abstract class FindNumberGameEvent with _$FindNumberGameEvent{
  const factory FindNumberGameEvent.initStartScreen() = _InitStartScreen;
  const factory FindNumberGameEvent.selectNumber({@required int number}) = _SelectNumber;
}
