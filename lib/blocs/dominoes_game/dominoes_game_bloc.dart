import 'dart:math';
import 'package:collection/collection.dart';

import 'package:brain_flower/blocs/dominoes_game/dominoes_game_event.dart';
import 'package:brain_flower/blocs/dominoes_game/dominoes_game_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DominoesGameBloc extends Bloc<DominoesGameEvent, DominoesGameState> {
  @override
  DominoesGameState get initialState => InitialStateDominoesGame();

  final _random = Random();
  var _correctAnswerPosition = 0;

  @override
  Stream<DominoesGameState> mapEventToState(DominoesGameEvent event) async* {
    if (event is InitStartScreenDominoes) {
      yield* _mapToStartScreen(event);
    } else if (event is SelectDominoEvent) {
      yield* _mapToGeneratedDominoesState(event);
    }
  }

  Stream<GeneratedDominoesState> _mapToStartScreen(
      InitStartScreenDominoes event) async* {
    final firstDominoDots = await _generateRandomDomino();
    final secondDominoDots = await _generateRandomDomino();

    final correctDomino =
        await _generateCorrectDomino(firstDominoDots, secondDominoDots);

    final dominoesForAnswer = await _generateDominoesForAnswer(correctDomino);

    yield GeneratedDominoesState(
        firstDominoDots: firstDominoDots,
        secondDominoDots: secondDominoDots,
        isCorrectAnswer: null,
        dominoesForAnswer: dominoesForAnswer,
        correctAnswerPosition: _correctAnswerPosition,
        scores: 0);
  }

  Stream<GeneratedDominoesState> _mapToGeneratedDominoesState(
      SelectDominoEvent event) async* {
    var firstDominoDots = <bool>[];
    var secondDominoDots = <bool>[];
    var correctDomino = <bool>[];
    var dominoesForAnswer = <List<bool>>[];
    var scores = 0;
    var isCorrectAnswer = true;

    var currentState = state;
    if (currentState is GeneratedDominoesState) {
      firstDominoDots = await _generateRandomDomino();
      secondDominoDots = await _generateRandomDomino();

      correctDomino =
          await _generateCorrectDomino(firstDominoDots, secondDominoDots);

      dominoesForAnswer = await _generateDominoesForAnswer(correctDomino);

      isCorrectAnswer = event.isCorrectAnswer;

      if (isCorrectAnswer) {
        scores = currentState.scores + 50;
      } else if (currentState.scores > 0) {
        scores = currentState.scores - 50;
      }
    }

    yield GeneratedDominoesState(
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
      var randomInt = _random.nextInt(2);
      var isActiveDot = randomInt == 0;
      dots.add(isActiveDot);
    }
    return dots;
  }

  Future<List<bool>> _generateCorrectDomino(
      List<bool> firstDomino, List<bool> secondDomino) async {
    final dots = <bool>[];
    for (int i = 0; i < firstDomino.length; i++) {
      final isActive = firstDomino[i] != secondDomino[i];
      dots.add(isActive);
    }
    return dots;
  }

  Future<List<List<bool>>> _generateDominoesForAnswer(
      List<bool> correctDomino) async {
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
