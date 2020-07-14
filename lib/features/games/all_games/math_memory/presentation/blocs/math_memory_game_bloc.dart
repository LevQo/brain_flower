import 'dart:math';

import 'package:brain_flower/features/games/all_games/math_memory/presentation/blocs/math_memory_game_state.dart';
import 'package:brain_flower/features/games/all_games/math_memory/data/models/math_game_card_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'math_memory_game_event.dart';

class MathMemoryGameBloc extends Bloc<MathMemoryGameEvent, MathMemoryGameState> {
  final Random _random = Random();
  int _currentResult = 0;
  int _numberToRemember;

  @override
  MathMemoryGameState get initialState => MathMemoryGameState.initial();

  @override
  Stream<MathMemoryGameState> mapEventToState(MathMemoryGameEvent event) async* {
    yield* event.when(initStartScreen: () async* {
      yield* _mapToStartScreenState();
    }, toAnswer: (number) async* {
      yield* _mapToGeneratedMathCardState(number);
    });
  }

  Stream<MathMemoryGameState> _mapToStartScreenState() async* {
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

    var nextNumber = MathGameCardModel(number: mathSign + randomNextNumber.toString());

    yield MathMemoryGameState.generatedMathCards(
        currentNumber: number, nextNumber: nextNumber, scores: 0, isCorrectAnswer: null);
  }

  Stream<MathMemoryGameState> _mapToGeneratedMathCardState(int number) async* {
    MathGameCardModel currentNumber;
    MathGameCardModel nextNumber;
    var isCorrectAnswer;
    var scores;

    final currentState = state;
    if (currentState is GeneratedMathCards) {
      scores = currentState.scores;

      await _calculateCurrentResult(
          currentState.currentNumber.number, currentState.currentNumber.isMemorizedNumber);

      currentNumber = currentState.nextNumber;
      nextNumber = await _generateNextNumber(currentNumber);

      isCorrectAnswer = number == _currentResult;

      if (isCorrectAnswer) {
        scores += 50;
      } else if (scores > 0) {
        scores -= 50;
      }
    }

    yield MathMemoryGameState.generatedMathCards(
        currentNumber: currentNumber,
        nextNumber: nextNumber,
        correctNumber: _currentResult,
        scores: scores,
        isCorrectAnswer: isCorrectAnswer);
  }

  Future<MathGameCardModel> _generateNextNumber(MathGameCardModel currentNumberModel) async {
    var nextNumberString = "";
    var randomNextNumber = 1 + _random.nextInt(8 - 1);

    var currentNumber =
        !currentNumberModel.isMemorizedNumber ? int.parse(currentNumberModel.number) : _numberToRemember;
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

  Future _calculateCurrentResult(String numberString, bool isMemorizedNumber) async {
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
