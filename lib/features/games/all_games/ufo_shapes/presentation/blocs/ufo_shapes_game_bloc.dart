import 'package:brain_flower/features/games/all_games/ufo_shapes/presentation/blocs/ufo_shapes_game_state.dart';
import 'package:brain_flower/features/games/all_games/ufo_shapes/presentation/screens/ufo_shapes_game_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ufo_shapes_game_event.dart';

class UfoShapesGameBloc extends Bloc<UfoShapesGameEvent, UfoShapesGameState> {
  List<Widget> _shapesList = [];

  @override
  UfoShapesGameState get initialState => UfoShapesGameState();

  @override
  Stream<UfoShapesGameState> mapEventToState(UfoShapesGameEvent event) async* {
    if (event is InitUfoShapesEvent) {
      yield* _startBuildShapes();
    } else if(event is UfoShapeOnFinishEvent){
      yield* _mapToFinishShapeState();
    }
  }

  Stream<UfoShapesGameState> _startBuildShapes() async* {
    while(true){
      await Future.delayed(Duration(seconds: 2));
      _shapesList.add(ShapeWidget());
      yield AddNewUfoShapeState(shapes: _shapesList);
    }
  }

  Stream<UfoShapesGameState> _mapToFinishShapeState() async* {
    print('COMPLETED ANIM');
//    while(true){
//      await Future.delayed(Duration(seconds: 2));
//      _shapesList.add(ShapeWidget());
//      yield AddNewUfoShapeState(shapes: _shapesList);
//    }
  }
}
