import 'package:brain_flower/data/more_less_game/answer_types_more_less.dart';
import 'package:equatable/equatable.dart';

class MoreLessGameEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class InitStartScreenMoreLess extends MoreLessGameEvent {
  @override
  List<Object> get props => super.props;
}

class SelectAnswerMoreLessEvent extends MoreLessGameEvent {
  final AnswerTypesMoreLess answerType;

  SelectAnswerMoreLessEvent({this.answerType});

  @override
  List<Object> get props => super.props;
}

