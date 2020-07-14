import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String score;

  const CustomAppBar({this.score});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        Text(
          score,
          style: TextStyle(fontSize: 24.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Icon(
          Icons.pause,
          color: Colors.white,
        ),
      ],
    );
  }
}
