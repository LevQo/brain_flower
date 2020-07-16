import 'package:brain_flower/core/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:brain_flower/core/utils/extensions.dart';

class GameDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.isLightThemeMode ? CustomColors.defaultTextColor : Colors.white,
      width: context.screenHeight * 0.8,
      height: 1.0,
    );
  }
}
