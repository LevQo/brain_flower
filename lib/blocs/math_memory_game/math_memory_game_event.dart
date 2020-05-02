import 'package:equatable/equatable.dart';

class MathMemoryGameEvent extends Equatable{
  @override
  List<Object> get props => [];

  const MathMemoryGameEvent();
}

class InitStartScreenMathMemory extends MathMemoryGameEvent{
  const InitStartScreenMathMemory();

  @override
  List<Object> get props => super.props;
}

class ToAnswerMathMemoryEvent extends MathMemoryGameEvent{
  final int number;

  ToAnswerMathMemoryEvent({this.number});

  @override
  List<Object> get props => [this.number];
}