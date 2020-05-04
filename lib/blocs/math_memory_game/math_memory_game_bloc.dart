import 'dart:math';

import 'package:brain_flower/blocs/math_memory_game/math_memory_game_event.dart';
import 'package:brain_flower/blocs/math_memory_game/math_memory_game_state.dart';
import 'package:brain_flower/data/math_memory_game/MathGameCardModel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MathMemoryGameBloc
    extends Bloc<MathMemoryGameEvent, MathMemoryGameState> {
  final Random _random = Random();
  int _currentResult = 0;
  int _numberToRemember;

  @override
  MathMemoryGameState get initialState => InitialStateMathMemoryGame();

  @override
  Stream<MathMemoryGameState> mapEventToState(
      MathMemoryGameEvent event) async* {
    if (event is InitStartScreenMathMemory) {
      yield* _mapToStartScreenState();
    } else if (event is ToAnswerMathMemoryEvent) {
      yield* _mapToGeneratedMathCardState(event);
    }
  }

  Stream<GeneratedMathCardsState> _mapToStartScreenState() async* {
    var randomNumber = 1 + _random.nextInt(8 - 1);
    var number = MathGameCardModel(number: '+' + randomNumber.toString());

    var isPlusOperation = _random.nextBool();
    var randomNextNumber = 1 + _random.nextInt(8 - 1);

    if (isPlusOperation) {
      while (randomNumber + randomNextNumber > 9) {
        randomNextNumber = 1 + _random.nextInt(8 - 1);
      }
    } else {
      while (randomNumber - randomNextNumber < 1) {
        randomNextNumber = 1 + _random.nextInt(8 - 1);
      }
    }

    final mathSign = isPlusOperation ? '+' : '-';

    var nextNumber =
        MathGameCardModel(number: mathSign + randomNextNumber.toString());

    yield GeneratedMathCardsState(
        currentNumber: number,
        nextNumber: nextNumber,
        scores: 0,
        isCorrectAnswer: null);
  }

  Stream<GeneratedMathCardsState> _mapToGeneratedMathCardState(
      ToAnswerMathMemoryEvent event) async* {
    MathGameCardModel currentNumber;
    MathGameCardModel nextNumber;
    var isCorrectAnswer;
    var scores;

    final currentState = state;
    if (currentState is GeneratedMathCardsState) {
      scores = currentState.scores;

      await _calculateCurrentResult(currentState.currentNumber.number,
          currentState.currentNumber.isMemorizedNumber);

      currentNumber = currentState.nextNumber;
      nextNumber = await _generateNextNumber(currentNumber);

      isCorrectAnswer = event.number == _currentResult;

      if (isCorrectAnswer) {
        scores += 50;
      } else if (scores > 0) {
        scores -= 50;
      }
    }

    yield GeneratedMathCardsState(
        currentNumber: currentNumber,
        nextNumber: nextNumber,
        correctNumber: _currentResult,
        scores: scores,
        isCorrectAnswer: isCorrectAnswer);
  }

//  Future<MathGameCardModel> _generateNextNumber(
//      MathGameCardModel currentNumberModel) async {
//    String numberString;
//    bool isPlusOperation = true;
//
//    int randomNumber = 1 + _random.nextInt(8 - 1);
//    int nextResult = _currentResult + int.parse(currentNumberModel.number);
//
//    if(nextResult < 8){
//      isPlusOperation = _random.nextBool();
//    } else {
//
//    }
//
//
//    return MathGameCardModel(number: numberString
//    );
//  }

  Future<MathGameCardModel> _generateNextNumber(
      MathGameCardModel currentNumberModel) async {
    var nextNumberString = "";
    var randomNextNumber = 1 + _random.nextInt(8 - 1);

    var currentNumber = !currentNumberModel.isMemorizedNumber
        ? int.parse(currentNumberModel.number)
        : _numberToRemember;
    var nextResult = _currentResult + currentNumber;

    var isPlusOperation = true;
    if (nextResult > 8) {
      isPlusOperation = false;
    } else if (nextResult > 2) {
      isPlusOperation = _random.nextBool();
    }

    var isMemorizedNumber = false;
    var isNeedToRemember = false;

    if (_numberToRemember != null &&
        !currentNumberModel.isMemorizedNumber &&
        !currentNumberModel.isNeedToRemember) {
      if (isPlusOperation && nextResult + _numberToRemember < 10 ||
          !isPlusOperation && nextResult - _numberToRemember > 0) {
        isMemorizedNumber = _random.nextBool();
      }
    }

    if (_numberToRemember == null) {
      isNeedToRemember = _random.nextBool();
      if (isNeedToRemember) {
        _numberToRemember = randomNextNumber;
      }
    }

    if (!isMemorizedNumber) {
      if (isPlusOperation) {
        while (nextResult + randomNextNumber > 9) {
          randomNextNumber = 1 + _random.nextInt(8 - 1);
        }
      } else {
        while (nextResult - randomNextNumber < 1) {
          randomNextNumber = 1 + _random.nextInt(8 - 1);
        }
      }
      nextNumberString = randomNextNumber.toString();
    }

    final mathSign = isPlusOperation ? '+' : '-';

    return MathGameCardModel(
        number: mathSign + nextNumberString,
        isNeedToRemember: isNeedToRemember,
        isMemorizedNumber: isMemorizedNumber);
  }

  Future _calculateCurrentResult(
      String numberString, bool isMemorizedNumber) async {
    var isPlusOperation = numberString.contains('+');

    int numberInt;

    if (isMemorizedNumber) {
      numberInt = _numberToRemember;
      _numberToRemember = null;
    } else {
      numberInt = int.parse(numberString.substring(1, numberString.length));
    }

    if (isPlusOperation) {
      _currentResult += numberInt;
    } else {
      _currentResult -= numberInt;
    }
  }
}
