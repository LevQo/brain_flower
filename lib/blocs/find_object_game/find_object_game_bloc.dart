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

  @override
  Stream<FindObjectGameState> mapEventToState(
      FindObjectGameEvent event) async* {
    if (event is InitStartScreenFindObject) {
      yield* _mapToStartScreen();
    } else if (event is SelectObjectEvent) {}
  }

  Stream<GeneratedObjectsState> _mapToStartScreen() async* {
    var objectToSearch = await _generateRandomObject();
    var objects = await _generateRandomObjects(objectToSearch);
    var colorText;

    var typeOfSearch = _random.nextInt(2) == 0
        ? FindObjectGameTypes.TEXT
        : FindObjectGameTypes.COLOR;

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

    if(typeOfSearch == FindObjectGameTypes.TEXT){
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

    for (int i = 0; i < 7; i++) {
      var object = await _generateRandomObject();
      while (object.icon == objectToSearch.icon &&
          object.color == objectToSearch.color) {
        object = await _generateRandomObject();
      }
      objects.add(object);
    }

    var objectToSearchPosition = _random.nextInt(8);
    objects.insert(objectToSearchPosition, objectToSearch);

    return objects;
  }
}
