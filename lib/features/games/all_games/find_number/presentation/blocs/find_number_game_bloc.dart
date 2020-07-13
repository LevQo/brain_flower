import 'dart:math';

import 'package:brain_flower/core/resources/colors.dart';
import 'package:brain_flower/core/resources/constants.dart';
import 'package:brain_flower/features/games/all_games/find_number/data/models/find_number_model.dart';
import 'package:brain_flower/features/games/all_games/find_number/data/models/number_types_find_numbers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'find_number_game_event.dart';
import 'find_number_game_state.dart';

class FindNumberGameBloc
    extends Bloc<FindNumberGameEvent, FindNumberGameState> {
  int _correctAnswerCounter = 0;
  final _random = Random();

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
    var numbers = await _generateNumbers();


    var indexNumberToSearch = _random.nextInt(numbers.length);
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
        scores = currentState.scores + kDefaultScoresForAnswer;
        _correctAnswerCounter++;
      } else {
        if (scores > 0 || _correctAnswerCounter > 0) {
          scores = currentState.scores - kDefaultScoresForAnswer;
          _correctAnswerCounter--;
        }
      }
    }

    var numbers = await _generateNumbers();

    var indexNumberToSearch = random.nextInt(numbers.length);
    var numberToSearch = numbers[indexNumberToSearch].number;

    yield GeneratedNumbersFindNumberState(
        numberToSearch: numberToSearch,
        numbers: numbers,
        scores: scores,
        isCorrectAnswer: isCorrectAnswer);
  }

  Future<List<FindNumberModel>> _generateNumbers() async {
    var random = Random();
    List<FindNumberModel> resultNumbers = [];
    List<int> numbersInt = [];

    var countNumbers = 1;
    var maxNumber = 1;
    var countNumberTypes = 7;

    if(_correctAnswerCounter < 2){
      countNumbers = 3;
      maxNumber = 100;
      countNumberTypes = 1;
    } else if(_correctAnswerCounter < 5){
      countNumbers = 6;
      maxNumber = 500;
      countNumberTypes = 2;
    } else if(_correctAnswerCounter < 7){
      countNumbers = 9;
      maxNumber = 1000;
      countNumberTypes = 4;
    } else if(_correctAnswerCounter < 10){
      countNumbers = 12;
      maxNumber = 1500;
      countNumberTypes = 5;
    } else if(_correctAnswerCounter < 13){
      countNumbers = 15;
      maxNumber = 2500;
    } else if(_correctAnswerCounter < 15){
      countNumbers = 18;
      maxNumber = 5000;
    } else {
      countNumbers = 21;
      maxNumber = 10000;
    }

    for (int i = 0; i < countNumbers; i++) {
      var colorsCount = CustomColors.arrayColors.length;
      var color = CustomColors.arrayColors[random.nextInt(colorsCount)];

      var number = random.nextInt(maxNumber);

      while (numbersInt.contains(number)) {
        number = random.nextInt(maxNumber);
      }

      numbersInt.add(number);

      var type;
      switch (random.nextInt(countNumberTypes)) {
        case 0:
          type = NumberTypesFindNumbers.DEFAULT;
          break;
        case 1:
          type = NumberTypesFindNumbers.SCALE;
          break;
        case 2:
          type = NumberTypesFindNumbers.VERTICAL_TRANSLATE;
          break;
        case 3:
          type = NumberTypesFindNumbers.HORIZONTAL_TRANSLATE;
          break;
        case 4:
          type = NumberTypesFindNumbers.HALF_ROTATE;
          break;
        case 5:
          type = NumberTypesFindNumbers.COLORFUL;
          break;
        case 6:
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
