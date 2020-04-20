import 'package:equatable/equatable.dart';

class FindNumberGameEvent extends Equatable{
  @override
  List<Object> get props => [];
}

class InitStartScreenFindNumber extends FindNumberGameEvent{
  @override
  List<Object> get props => super.props;
}

class SelectNumberFindNumberEvent extends FindNumberGameEvent{
  final int number;

  SelectNumberFindNumberEvent({this.number});

  @override
  List<Object> get props => [this.number];
}
