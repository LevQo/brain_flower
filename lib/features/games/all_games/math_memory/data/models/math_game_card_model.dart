import 'package:flutter/material.dart';

class MathGameCardModel {
  final String number;
  final bool isNeedToRemember;
  final bool isMemorizedNumber;

  const MathGameCardModel(
      {@required this.number, this.isNeedToRemember = false, this.isMemorizedNumber = false});
}
