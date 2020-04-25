import 'package:brain_flower/data/find_number_game/number_types_find_numbers.dart';
import 'package:flutter/material.dart';

class FindNumberModel{
  Color _color;
  int _number;
  NumberTypesFindNumbers _type;

  FindNumberModel(this._color, this._number, this._type);

  NumberTypesFindNumbers get type => _type;

  int get number => _number;

  Color get color => _color;

}