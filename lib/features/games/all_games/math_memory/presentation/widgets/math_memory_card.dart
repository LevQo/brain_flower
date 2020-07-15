import 'package:brain_flower/core/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:brain_flower/core/utils/extensions.dart';

class MathMemoryCard extends StatelessWidget {
  final String number;
  final bool isNeedToRemember;
  final bool isMemorizedNumber;

  const MathMemoryCard({@required this.number, this.isNeedToRemember, this.isMemorizedNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight * 0.12,
      width: context.screenHeight * 0.14,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [BoxShadow(offset: Offset(0.0, 6.0), color: CustomColors.defaultShadowColor)],
          color: CustomColors.cardMathMemoryColor),
      child: Stack(
        children: isMemorizedNumber ? _buildMemorizedNumberCard() : _buildDefaultCard(),
      ),
    );
  }

  List<Widget> _buildDefaultCard() {
    return [
      Align(
        alignment: Alignment.center,
        child: Text(number, style: TextStyle(fontSize: 32, color: Colors.white)),
      ),
      Positioned(
        right: 2.0,
        top: 2.0,
        child: isNeedToRemember ? Icon(Icons.bubble_chart, color: Colors.white) : Container(),
      ),
    ];
  }

  List<Widget> _buildMemorizedNumberCard() {
    return [
      Align(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(number, style: TextStyle(fontSize: 32, color: Colors.white)),
            Icon(Icons.bubble_chart, color: Colors.white),
          ],
        ),
      ),
    ];
  }
}
