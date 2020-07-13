import 'package:flutter/material.dart';

import 'number_types_find_numbers.dart';

class FindNumberModel{
  Color _color;
  int _number;
  NumberTypesFindNumbers _type;

  FindNumberModel(this._color, this._number, this._type);

  NumberTypesFindNumbers get type => _type;

  int get number => _number;

  Color get color => _color;

}