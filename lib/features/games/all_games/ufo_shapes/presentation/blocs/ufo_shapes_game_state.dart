import 'package:flutter/cupertino.dart';

class UfoShapesGameState {
  const UfoShapesGameState();
}

class AddNewUfoShapeState extends UfoShapesGameState{
  final List<Widget> shapes;

  const AddNewUfoShapeState({@required this.shapes});
}
