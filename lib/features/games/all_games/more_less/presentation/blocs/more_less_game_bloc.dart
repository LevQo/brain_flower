import 'dart:math';

import 'package:brain_flower/core/resources/constants.dart';
import 'package:brain_flower/features/games/all_games/more_less/presentation/blocs/more_less_game_state.dart';
import 'package:brain_flower/features/games/all_games/more_less/data/models/answer_types_more_less.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'more_less_game_event.dart';

class MoreLessGameBloc extends Bloc<MoreLessGameEvent, MoreLessGameState> {
  int _correctAnswerCounter = 0;
  final _random = Random();

  @override
  MoreLessGameState get initialState => MoreLessGameState.initial();

  @override
  Stream<MoreLessGameState> mapEventToState(MoreLessGameEvent event) async* {
    yield* event.when(initStartScreen: () async* {
      yield* _mapToStartScreenState();
    }, selectAnswer: (answerType) async* {
      yield* _mapToGenerateNewAnswerState(answerType);
    });
  }

  Stream<MoreLessGameState> _mapToStartScreenState() async* {
    String firstNumber = await _generateNumber();
    String secondNumber = await _generateNumber();

    yield MoreLessGameState.generatedNumbers(
        firstNumber: firstNumber, secondNumber: secondNumber, scores: 0, isCorrectAnswer: null);
  }

  Stream<MoreLessGameState> _mapToGenerateNewAnswerState(AnswerTypesMoreLess answerType) async* {
    final currentState = state;

    String firstNumber = "";
    String secondNumber = "";
    int score = 0;
    bool isCorrectAnswer = true;

    if (currentState is GeneratedNumbers) {
      isCorrectAnswer = await _checkAnswer(currentState, answerType);
      if (isCorrectAnswer) {
        score = currentState.scores + kDefaultScoresForAnswer;
        _correctAnswerCounter++;
      } else {
        if (currentState.scores > 0 || _correctAnswerCounter > 0) {
          score = currentState.scores - kDefaultScoresForAnswer;
          _correctAnswerCounter--;
        }
      }
    }

    firstNumber = await _generateNumber();
    secondNumber = await _generateNumber();

    yield MoreLessGameState.generatedNumbers(
        firstNumber: firstNumber,
        secondNumber: secondNumber,
        scores: score,
        isCorrectAnswer: isCorrectAnswer);
  }

  Future<String> _generateNumber() async {
    String randomNumber = "";

    if (_correctAnswerCounter > 5) {
      int gameType = _random.nextInt(3); // 0 - DEFAULT, 1 - PLUS, 2 - MINUS

      int firstNumber;
      int secondNumber;

      if (_correctAnswerCounter > 20) {
        firstNumber = 1000 + _random.nextInt(2000 - 100);
        secondNumber = 100 + _random.nextInt(2000 - 100);
      } else if (_correctAnswerCounter > 10) {
        firstNumber = 50 + _random.nextInt(199 - 50);
        secondNumber = 50 + _random.nextInt(199 - 50);
      } else {
        firstNumber = 10 + _random.nextInt(99 - 10);
        secondNumber = 10 + _random.nextInt(99 - 10);
      }

      if (gameType == 2) {
        //MINUS
        randomNumber = "$firstNumber - $secondNumber";
      } else if (gameType == 1) {
        //PLUS
        randomNumber = "$firstNumber + $secondNumber";
      } else {
        //DEFAULT
        randomNumber = (101 + _random.nextInt(299 - 101)).toString();
      }
    } else {
      randomNumber = (101 + _random.nextInt(299 - 101)).toString();
    }

    return randomNumber;
  }

  Future<bool> _checkAnswer(GeneratedNumbers currentState, AnswerTypesMoreLess answerType) async {
    double firstNumber = await _formatNumber(currentState.firstNumber);
    double secondNumber = await _formatNumber(currentState.secondNumber);

    if (answerType == AnswerTypesMoreLess.firstNumber) {
      return firstNumber > secondNumber;
    } else if (answerType == AnswerTypesMoreLess.secondNumber) {
      return secondNumber > firstNumber;
    } else if (answerType == AnswerTypesMoreLess.equal) {
      return firstNumber == secondNumber;
    } else {
      return false;
    }
  }

  Future<double> _formatNumber(String numberString) async {
    var number;

    if (numberString.contains('-')) {
      var numbersFirst = numberString.split(' - ');
      number = double.parse(numbersFirst[0]) - double.parse(numbersFirst[1]);
    } else if (numberString.contains('+')) {
      var numbersFirst = numberString.split(' + ');
      number = double.parse(numbersFirst[0]) + double.parse(numbersFirst[1]);
    } else {
      number = double.parse(numberString);
    }

    return number;
  }
}
