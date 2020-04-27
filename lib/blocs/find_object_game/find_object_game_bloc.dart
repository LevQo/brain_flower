import 'dart:math';

import 'package:brain_flower/blocs/find_object_game/find_object_game_event.dart';
import 'package:brain_flower/blocs/find_object_game/find_object_game_state.dart';
import 'package:brain_flower/data/find_object_game/find_object_model.dart';
import 'package:brain_flower/data/find_object_game/find_objects_game_types.dart';
import 'package:brain_flower/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FindObjectGameBloc
    extends Bloc<FindObjectGameEvent, FindObjectGameState> {
  @override
  FindObjectGameState get initialState => InitialStateFindObject();

  final _random = Random();
  int _correctAnswerCounter = 0;

  @override
  Stream<FindObjectGameState> mapEventToState(
      FindObjectGameEvent event) async* {
    if (event is InitStartScreenFindObject) {
      yield* _mapToStartScreen();
    } else if (event is SelectObjectEvent) {
      yield* _mapToGeneratedObjectsState(event);
    }
  }

  Stream<GeneratedObjectsState> _mapToStartScreen() async* {
    final objectToSearch = await _generateRandomObject();
    final objects = await _generateRandomObjects(objectToSearch);
    var colorText;

    var typeOfSearch = _random.nextInt(2) == 0
        ? FindObjectGameTypes.TEXT
        : FindObjectGameTypes.COLOR;

    //TODO MOVE TO GLOBAL CONST
    var colorsText = [
      'Зеленый',
      'Красный',
      'Синий',
      'Салатовый',
      'Темно-фиолетовый',
      'Фиолетовый',
      'Бледно-зеленый',
      'Розовый',
      'Голубой',
      'Оранжевый',
      'Серый',
    ];

    if (typeOfSearch == FindObjectGameTypes.TEXT) {
      var colorIndex = CustomColors.arrayColors.indexOf(objectToSearch.color);
      colorText = colorsText[colorIndex];
    } else {
      var colorIndex = _random.nextInt(colorsText.length);
      colorText = colorsText[colorIndex];
    }

    yield GeneratedObjectsState(
        objectToSearch: objectToSearch,
        objects: objects,
        typeOfSearch: typeOfSearch,
        colorText: colorText,
        scores: 0,
        isCorrectAnswer: null);
  }

  Stream<GeneratedObjectsState> _mapToGeneratedObjectsState(
      SelectObjectEvent event) async* {
    FindObjectModel objectToSearch;
    var objects = <FindObjectModel>[];
    var colorText;
    var scores = 0;
    var isCorrectAnswer = true;
    FindObjectGameTypes typeOfSearch;

    var currentState = state;
    if (currentState is GeneratedObjectsState) {
      objectToSearch = await _generateRandomObject();
      objects = await _generateRandomObjects(objectToSearch);

      typeOfSearch = _random.nextInt(2) == 0
          ? FindObjectGameTypes.TEXT
          : FindObjectGameTypes.COLOR;

      //TODO MOVE TO GLOBAL CONST
      var colorsText = [
        'Зеленый',
        'Красный',
        'Синий',
        'Салатовый',
        'Темно-фиолетовый',
        'Фиолетовый',
        'Бледно-зеленый',
        'Розовый',
        'Голубой',
        'Оранжевый',
        'Серый',
      ];

      if (typeOfSearch == FindObjectGameTypes.TEXT) {
        var colorIndex = CustomColors.arrayColors.indexOf(objectToSearch.color);
        colorText = colorsText[colorIndex];

        if (event.object.icon == currentState.objectToSearch.icon &&
            event.object.color == currentState.objectToSearch.color){
            var previousColorIndex = CustomColors.arrayColors.indexOf(event.object.color);
            if(currentState.colorText == colorsText[previousColorIndex]){
              isCorrectAnswer = true;
            } else {
              isCorrectAnswer = false;
            }
        }
      } else {
        var colorIndex = _random.nextInt(colorsText.length);
        colorText = colorsText[colorIndex];

        if (event.object.icon == currentState.objectToSearch.icon &&
            event.object.color == currentState.objectToSearch.color){
          isCorrectAnswer = true;
        } else {
          isCorrectAnswer = false;
        }
      }

      if(isCorrectAnswer){
        scores = currentState.scores + 50;
        _correctAnswerCounter++;
      } else if(currentState.scores > 0) {
        scores = currentState.scores - 50;
        _correctAnswerCounter--;
      }

    }

    yield GeneratedObjectsState(
        objectToSearch: objectToSearch,
        objects: objects,
        typeOfSearch: typeOfSearch,
        colorText: colorText,
        scores: scores,
        isCorrectAnswer: isCorrectAnswer);
  }

  Future<FindObjectModel> _generateRandomObject() async {
    var colorsSize = CustomColors.arrayColors.length;

    var randomColorIndex = _random.nextInt(colorsSize);
    var color = CustomColors.arrayColors[randomColorIndex];

    var iconsArray = [
      Icons.event,
      Icons.brightness_3,
      Icons.print,
      Icons.forward,
      Icons.score,
      Icons.landscape,
      Icons.widgets,
      Icons.phone,
    ];

    var iconsArraySize = iconsArray.length;
    var randomIconIndex = _random.nextInt(iconsArraySize);
    var icon = iconsArray[randomIconIndex];

    return FindObjectModel(color, icon);
  }

  Future<List<FindObjectModel>> _generateRandomObjects(
      FindObjectModel objectToSearch) async {
    var objects = <FindObjectModel>[];

    var countObjects = 0;

    if(_correctAnswerCounter < 5){
      countObjects = 4;
    } else if(_correctAnswerCounter < 10){
      countObjects = 8;
    } else if(_correctAnswerCounter < 15){
      countObjects = 12;
    }

    for (int i = 0; i < countObjects - 1; i++) {
      var object = await _generateRandomObject();
      while (object.icon == objectToSearch.icon &&
          object.color == objectToSearch.color) {
        object = await _generateRandomObject();
      }
      objects.add(object);
    }

    var objectToSearchPosition = _random.nextInt(countObjects);
    objects.insert(objectToSearchPosition, objectToSearch);

    return objects;
  }
}
