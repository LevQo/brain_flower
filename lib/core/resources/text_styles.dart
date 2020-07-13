import 'package:flutter/material.dart';

import 'colors.dart';

class CustomTextStyle {
  const CustomTextStyle._();

  static TextStyle defaultText(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? TextStyle(fontSize: 20.0, color: CustomColors.defaultTextColor)
        : TextStyle(fontSize: 20.0, color: Colors.white);
  }

  static TextStyle headerTitle() {
    return TextStyle(
        fontSize: 34.0,
        color: Colors.white,
        fontWeight: FontWeight.bold);
  }
}
