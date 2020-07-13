import 'package:flutter/material.dart';

class WhiteDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width * 0.8,
      height: 1.0,
    );
  }
}
