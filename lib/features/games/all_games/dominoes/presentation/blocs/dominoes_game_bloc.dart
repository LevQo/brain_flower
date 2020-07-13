import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './bloc.dart';

class DominoesGameBloc extends Bloc<DominoesGameEvent, DominoesGameState> {
  @override
  DominoesGameState get initialState => const DominoesGameState.initial();

  final _random = Random();
  var _correctAnswerPosition = 0;

  @override
  Stream<DominoesGameState> mapEventToState(DominoesGameEvent event) async* {
    yield* event.when(
      initStartScreen: () async* {
        yield* _mapToStartScreen();
      },
      selectDomino: (isCorrectAnswer) async* {
        yield* _mapToGeneratedDominoesState(isCorrectAnswer);
      },
    );
  }

  Stream<DominoesGameState> _mapToStartScreen() async* {
    final firstDominoDots = await _generateRandomDomino();
    final secondDominoDots = await _generateRandomDomino();

    final correctDomino = await _generateCorrectDomino(firstDominoDots, secondDominoDots);

    final dominoesForAnswer = await _generateDominoesForAnswer(correctDomino);

    yield DominoesGameState.generatedDominoes(
        firstDominoDots: firstDominoDots,
        secondDominoDots: secondDominoDots,
        isCorrectAnswer: null,
        dominoesForAnswer: dominoesForAnswer,
        correctAnswerPosition: _correctAnswerPosition,
        scores: 0);
  }

  Stream<DominoesGameState> _mapToGeneratedDominoesState(bool isCorrectAnswer) async* {
    var firstDominoDots = <bool>[];
    var secondDominoDots = <bool>[];
    var correctDomino = <bool>[];
    var dominoesForAnswer = <List<bool>>[];
    var scores = 0;
    var isCorrectAnswer = true;

    var currentState = state;
    if (currentState is GeneratedDominoes) {
      firstDominoDots = await _generateRandomDomino();
      secondDominoDots = await _generateRandomDomino();

      correctDomino = await _generateCorrectDomino(firstDominoDots, secondDominoDots);
      dominoesForAnswer = await _generateDominoesForAnswer(correctDomino);

      isCorrectAnswer = isCorrectAnswer;

      if (isCorrectAnswer) {
        scores = currentState.scores + 50;
      } else if (currentState.scores > 0) {
        scores = currentState.scores - 50;
      }
    }

    yield DominoesGameState.generatedDominoes(
        firstDominoDots: firstDominoDots,
        secondDominoDots: secondDominoDots,
        isCorrectAnswer: isCorrectAnswer,
        dominoesForAnswer: dominoesForAnswer,
        correctAnswerPosition: _correctAnswerPosition,
        scores: scores);
  }

  Future<List<bool>> _generateRandomDomino() async {
    final dots = <bool>[];
    for (int i = 0; i < 9; i++) {
      var randomInt = _random.nextBool();
      var isActiveDot = randomInt;
      dots.add(isActiveDot);
    }
    return dots;
  }

  Future<List<bool>> _generateCorrectDomino(List<bool> firstDomino, List<bool> secondDomino) async {
    final dots = <bool>[];
    for (int i = 0; i < firstDomino.length; i++) {
      final isActive = firstDomino[i] != secondDomino[i];
      dots.add(isActive);
    }
    return dots;
  }

  Future<List<List<bool>>> _generateDominoesForAnswer(List<bool> correctDomino) async {
    final dots = <List<bool>>[];
    for (int i = 0; i < 3; i++) {
      var dominoForAnswer = await _generateRandomDomino();
      while (ListEquality().equals(correctDomino, dominoForAnswer)) {
        dominoForAnswer = await _generateRandomDomino();
      }
      dots.add(dominoForAnswer);
    }
    _correctAnswerPosition = _random.nextInt(4);
    dots.insert(_correctAnswerPosition, correctDomino);
    return dots;
  }
}
