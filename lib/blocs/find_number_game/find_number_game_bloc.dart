import 'dart:math';

import 'package:brain_flower/blocs/find_number_game/find_number_game_event.dart';
import 'package:brain_flower/blocs/find_number_game/find_number_game_state.dart';
import 'package:brain_flower/data/find_number_game/FindNumberModel.dart';
import 'package:brain_flower/data/find_number_game/number_types_find_numbers.dart';
import 'package:brain_flower/resources/colors.dart';
import 'package:brain_flower/resources/constants.dart';
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

  Stream<GeneratedNumbersFindNumberState> _mapToStartScreen() async* {
    var numbers = _generateNumbers();

    var random = Random();
    var indexNumberToSearch = random.nextInt(numbers.length);
    var numberToSearch = numbers[indexNumberToSearch].number;


    yield GeneratedNumbersFindNumberState(
        numberToSearch: numberToSearch,
        numbers: numbers,
        scores: 0,
        isCorrectAnswer: null);
  }

  Stream<GeneratedNumbersFindNumberState> _mapToGeneratedNumbersState(
      SelectNumberFindNumberEvent event) async* {
    var currentState = state;
    var random = Random();

    var isCorrectAnswer = true;
    var scores = 0;

    if (currentState is GeneratedNumbersFindNumberState) {
      isCorrectAnswer = event.number == currentState.numberToSearch;
      if (isCorrectAnswer) {
        scores = currentState.scores + Constants.defaultScoresForAnswer;
      } else {
        if (scores > 0) {
          scores = currentState.scores - Constants.defaultScoresForAnswer;
        }
      }
    }

    var numbers = _generateNumbers();

    var indexNumberToSearch = random.nextInt(numbers.length);
    var numberToSearch = numbers[indexNumberToSearch].number;

    yield GeneratedNumbersFindNumberState(
        numberToSearch: numberToSearch,
        numbers: numbers,
        scores: scores,
        isCorrectAnswer: isCorrectAnswer);
  }

  int _generateNumberToSearch() {
    var random = Random();
    return random.nextInt(999);
  }

  List<FindNumberModel> _generateNumbers() {
    var random = Random();
    List<FindNumberModel> resultNumbers = [];
    List<int> numbersInt = [];

    for (int i = 0; i < 10; i++) {
      var colorsCount = CustomColors.arrayColors.length;
      var color = CustomColors.arrayColors[random.nextInt(colorsCount)];

      var number = random.nextInt(1000);

      while(numbersInt.contains(number)){
        number = random.nextInt(1000);
      }

      numbersInt.add(number);

      var typeInt = random.nextInt(8);
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
