import 'package:brain_flower/features/games/all_games/more_less/data/models/answer_types_more_less.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'more_less_game_event.freezed.dart';

@freezed
abstract class MoreLessGameEvent with _$MoreLessGameEvent {
  const factory MoreLessGameEvent.initStartScreen() = _InitStartScreen;

  const factory MoreLessGameEvent.selectAnswer({@required AnswerTypesMoreLess answerType}) = _SelectAnswer;
}
