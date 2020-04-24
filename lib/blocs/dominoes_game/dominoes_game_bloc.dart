import 'package:brain_flower/blocs/dominoes_game/dominoes_game_event.dart';
import 'package:brain_flower/blocs/dominoes_game/dominoes_game_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DominoesGameBloc extends Bloc<DominoesGameEvent, DominoesGameState> {
  @override
  DominoesGameState get initialState => InitialStateDominoesGame();

  @override
  Stream<DominoesGameState> mapEventToState(DominoesGameEvent event) async* {
    if (event is InitStartScreenDominoes) {
      yield* _mapToStartScreen(event);
    } else if (event is SelectDominoEvent) {}
  }

  Stream<GeneratedDominoesState> _mapToStartScreen(
      InitStartScreenDominoes event) async* {
    yield GeneratedDominoesState();
  }

  Stream<GeneratedDominoesState> _mapToGeneratedDominoesState(
      SelectDominoEvent event) async*{


    yield GeneratedDominoesState();
  }
}
