import 'package:flutter/cupertino.dart';

class UfoShapesGameEvent{
  const UfoShapesGameEvent();
}

class InitUfoShapesEvent extends UfoShapesGameEvent{
  const InitUfoShapesEvent();
}

class UfoShapeOnFinishEvent extends UfoShapesGameEvent{
  final Widget shape;

  const UfoShapeOnFinishEvent(this.shape);
}