import 'dart:math';

import 'package:brain_flower/blocs/more_less_game/more_less_game_event.dart';
import 'package:brain_flower/blocs/more_less_game/more_less_game_state.dart';
import 'package:brain_flower/data/more_less_game/answer_types_more_less.dart';
import 'package:brain_flower/resources/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoreLessGameBloc extends Bloc<MoreLessGameEvent, MoreLessGameState> {
  int _correctAnswerCounter = 0;

  @override
  MoreLessGameState get initialState => InitialStateMoreLess();

  @override
  Stream<MoreLessGameState> mapEventToState(MoreLessGameEvent event) async* {
    if (event is SelectAnswerMoreLessEvent) {
      yield* _mapToGenerateNewAnswerState(event);
    } else if (event is InitStartScreenMoreLess) {
      yield* _mapToStartScreenState();
    }
  }

  Stream<MoreLessGameState> _mapToStartScreenState() async* {
    _correctAnswerCounter = 0;

    String firstNumber = _generateNumber();
    String secondNumber = _generateNumber();

    yield GeneratedNumbersMoreLessState(
        firstNumber: firstNumber,
        secondNumber: secondNumber,
        scores: 0,
        isCorrectAnswer: null);
  }

  Stream<MoreLessGameState> _mapToGenerateNewAnswerState(
      SelectAnswerMoreLessEvent event) async* {
    final currentState = state;

    String firstNumber = "";
    String secondNumber = "";
    int score = 0;
    bool isCorrectAnswer = true;

    if (currentState is GeneratedNumbersMoreLessState) {
      isCorrectAnswer = _checkAnswer(currentState, event);
      if (isCorrectAnswer) {
        score = currentState.scores + Constants.defaultScoresForAnswer;
        _correctAnswerCounter++;
      } else {
        if(currentState.scores > 0) {
          score = currentState.scores - Constants.defaultScoresForAnswer;
        }
        _correctAnswerCounter--;
      }
    }

    firstNumber = _generateNumber();
    secondNumber = _generateNumber();

    yield GeneratedNumbersMoreLessState(
        firstNumber: firstNumber,
        secondNumber: secondNumber,
        scores: score,
        isCorrectAnswer: isCorrectAnswer);
  }

  String _generateNumber() {
    final random = Random();
    String randomNumber = "";

    if (_correctAnswerCounter > 5) {
      int gameType = random.nextInt(3); // 0 - DEFAULT, 1 - PLUS, 2 - MINUS

      int firstNumber;
      int secondNumber;

      if (_correctAnswerCounter > 20) {
        firstNumber = 1000 + random.nextInt(2000 - 100);
        secondNumber = 100 + random.nextInt(2000 - 100);
      } else if (_correctAnswerCounter > 10) {
        firstNumber = 50 + random.nextInt(199 - 50);
        secondNumber = 50 + random.nextInt(199 - 50);
      } else {
        firstNumber = 10 + random.nextInt(99 - 10);
        secondNumber = 10 + random.nextInt(99 - 10);
      }

      if (gameType == 2) {
        //MINUS
        randomNumber = "$firstNumber - $secondNumber";
      } else if (gameType == 1) {
        //PLUS
        randomNumber = "$firstNumber + $secondNumber";
      } else {
        //DEFAULT
        randomNumber = (101 + random.nextInt(299 - 101)).toString();
      }
    } else {
      randomNumber = (101 + random.nextInt(299 - 101)).toString();
    }

    return randomNumber;
  }

  bool _checkAnswer(
      GeneratedNumbersMoreLessState currentState, SelectAnswerMoreLessEvent event) {
    double firstNumber = _formatNumber(currentState.firstNumber);
    double secondNumber = _formatNumber(currentState.secondNumber);

    if (event.answerType == AnswerTypesMoreLess.firstNumber) {
      return firstNumber > secondNumber;
    } else if (event.answerType == AnswerTypesMoreLess.secondNumber) {
      return secondNumber > firstNumber;
    } else if (event.answerType == AnswerTypesMoreLess.equal) {
      return firstNumber == secondNumber;
    } else {
      return false;
    }
  }

  double _formatNumber(String numberString){
    var number;

    if (numberString.contains('-')) {
      var numbersFirst = numberString.split(' - ');
      number =
          double.parse(numbersFirst[0]) - double.parse(numbersFirst[1]);
    } else if (numberString.contains('+')) {
      var numbersFirst = numberString.split(' + ');
      number =
          double.parse(numbersFirst[0]) + double.parse(numbersFirst[1]);
    } else {
      number = double.parse(numberString);
    }

    return number;
  }


}
