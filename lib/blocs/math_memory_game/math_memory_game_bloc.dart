import 'dart:math';

import 'package:brain_flower/blocs/math_memory_game/math_memory_game_event.dart';
import 'package:brain_flower/blocs/math_memory_game/math_memory_game_state.dart';
import 'package:brain_flower/data/math_memory_game/MathGameCardModel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MathMemoryGameBloc
    extends Bloc<MathMemoryGameEvent, MathMemoryGameState> {
  final Random _random = Random();

  @override
  MathMemoryGameState get initialState => InitialStateMathMemoryGame();

  @override
  Stream<MathMemoryGameState> mapEventToState(
      MathMemoryGameEvent event) async* {
    if (event is InitStartScreenMathMemory) {
      yield* _mapToStartScreenState();
    } else if (event is ToAnswerMathMemoryEvent) {}
  }

  Stream<GeneratedMathCardsState> _mapToStartScreenState() async* {
    var number =
        MathGameCardModel((1 + _random.nextInt(8 - 1)).toString(), false);

    var nextNumber =
      MathGameCardModel((1 + _random.nextInt(8 - 1)).toString(), false);

    yield GeneratedMathCardsState(currentNumber: number, );
  }

  Future<MathGameCardModel> _generateMathCard() async {

  }
}
