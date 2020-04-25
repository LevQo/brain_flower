import 'package:flutter/material.dart';

class FindObjectModel {
  final Color _color;
  final IconData _icon;

  FindObjectModel(this._color, this._icon);

  IconData get icon => _icon;

  Color get color => _color;
}
