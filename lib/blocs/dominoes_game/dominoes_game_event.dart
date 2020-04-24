import 'package:equatable/equatable.dart';

class DominoesGameEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class InitStartScreenDominoes extends DominoesGameEvent{
  @override
  List<Object> get props => super.props;
}

class SelectDominoEvent extends DominoesGameEvent{
  final bool isCorrectAnswer;

  SelectDominoEvent(this.isCorrectAnswer);

  @override
  List<Object> get props => [];
}
