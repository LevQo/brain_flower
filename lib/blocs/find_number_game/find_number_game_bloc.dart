import 'dart:math';

import 'package:brain_flower/blocs/find_number_game/find_number_game_event.dart';
import 'package:brain_flower/blocs/find_number_game/find_number_game_state.dart';
import 'package:brain_flower/data/find_number_game/FindNumberModel.dart';
import 'package:brain_flower/data/find_number_game/number_types_find_numbers.dart';
import 'package:brain_flower/resources/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FindNumberGameBloc
    extends Bloc<FindNumberGameEvent, FindNumberGameState> {
  int _correctAnswerCounter = 0;

  @override
  FindNumberGameState get initialState => InitialStateFindNumber();

  @override
  Stream<FindNumberGameState> mapEventToState(
      FindNumberGameEvent event) async* {
    if (event is SelectNumberFindNumberEvent) {
      yield* _mapToGeneratedNumbersState(event);
    } else if (event is InitStartScreenFindNumber) {
      yield* _mapToStartScreen();
    }
  }

  Stream<GeneratedNumbersFindNumber> _mapToStartScreen() async* {
    var numbers = _generateNumbers();

    yield GeneratedNumbersFindNumber(
        numbers: numbers, score: 0, isCorrectAnswer: null);
  }

  Stream<GeneratedNumbersFindNumber> _mapToGeneratedNumbersState(
      SelectNumberFindNumberEvent event) async* {
    var currentState = state;

    var numbers = _generateNumbers();
    var scores = 0;


    yield GeneratedNumbersFindNumber();
  }

  List<FindNumberModel> _generateNumbers() {
    var random = Random();
    List<FindNumberModel> resultNumbers;

    for (int i; i < 10; i++) {
      var color = CustomColors.arrayColors[random.nextInt(10)];

      var number = random.nextInt(100);

      var typeInt = random.nextInt(7);
      var type;

      switch (typeInt) {
        case 0:
          type = NumberTypesFindNumbers.DEFAULT;
          break;
        case 1:
          type = NumberTypesFindNumbers.ROTATE;
          break;
        case 2:
          type = NumberTypesFindNumbers.SCALE;
          break;
        case 3:
          type = NumberTypesFindNumbers.VERTICAL_TRANSLATE;
          break;
        case 4:
          type = NumberTypesFindNumbers.HORIZONTAL_TRANSLATE;
          break;
        case 5:
          type = NumberTypesFindNumbers.HALF_ROTATE;
          break;
        case 6:
          type = NumberTypesFindNumbers.COLORFUL;
          break;
        case 7:
          type = NumberTypesFindNumbers.OPACITY;
          break;
        default:
          type = NumberTypesFindNumbers.DEFAULT;
      }

      var numberModel = FindNumberModel(color, number, type);
      resultNumbers.add(numberModel);
    }
    return resultNumbers;
  }
}
