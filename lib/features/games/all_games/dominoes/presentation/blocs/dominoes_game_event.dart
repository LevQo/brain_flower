import 'package:freezed_annotation/freezed_annotation.dart';

part 'dominoes_game_event.freezed.dart';

@freezed
abstract class DominoesGameEvent with _$DominoesGameEvent{
  const factory DominoesGameEvent.initStartScreen() = _InitStartScreen;
  const factory DominoesGameEvent.selectDomino({@required bool isCorrectAnswer}) = _SelectDomino;
}

//class DominoesGameEvent extends Equatable {
//  @override
//  List<Object> get props => [];
//}
//
//class InitStartScreenDominoes extends DominoesGameEvent{
//  @override
//  List<Object> get props => super.props;
//}
//
//class SelectDominoEvent extends DominoesGameEvent{
//  final bool isCorrectAnswer;
//
//  SelectDominoEvent(this.isCorrectAnswer);
//
//  @override
//  List<Object> get props => [];
//}
