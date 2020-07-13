import 'package:brain_flower/core/resources/colors.dart';
import 'package:flutter/material.dart';

class Domino extends StatelessWidget {
  final List<bool> dots;

  const Domino({@required this.dots});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      height: MediaQuery.of(context).size.width * 0.2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.0),
          boxShadow: [
            BoxShadow(
              blurRadius: 10.0,
              color: CustomColors.defaultShadowColor,
              offset: Offset(0.0, 4.0),
            )
          ],
          color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: _buildDotsRange(context, 0, 2),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: _buildDotsRange(context, 3, 5),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: _buildDotsRange(context, 6, 8),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildDotsRange(BuildContext context, int startIndex, int endIndex) {
    final dominoDots = <Widget>[];
    for (int i = startIndex; i <= endIndex; i++) {
      var dot = _buildDominoDot(context, dots[i]);
      dominoDots.add(dot);
    }
    return dominoDots;
  }

  Container _buildDominoDot(BuildContext context, bool isVisible) {
    return isVisible
        ? Container(
            height: MediaQuery.of(context).size.width * 0.04,
            width: MediaQuery.of(context).size.width * 0.04,
            decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.purpleAccent),
          )
        : Container(
            height: MediaQuery.of(context).size.width * 0.04,
            width: MediaQuery.of(context).size.width * 0.04,
            color: Colors.white,
          );
  }
}
