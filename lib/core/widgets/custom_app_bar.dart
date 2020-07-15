import 'package:brain_flower/core/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:brain_flower/core/utils/extensions.dart';

class CustomAppBar extends StatelessWidget {
  final String score;

  const CustomAppBar({this.score});

  @override
  Widget build(BuildContext context) {
    final Color color = context.isLightThemeMode ? CustomColors.appBarWidgetsColor : Colors.white;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_ios,
            color: color,
          ),
        ),
        Text(
          score,
          style: TextStyle(fontSize: 24.0, color: color, fontWeight: FontWeight.bold),
        ),
//        Icon(Icons.pause, color: color), TODO: ADD PAUSE
      ],
    );
  }
}
