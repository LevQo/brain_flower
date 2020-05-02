import 'package:brain_flower/resources/colors.dart';
import 'package:brain_flower/resources/drawables.dart';
import 'package:brain_flower/widgets/custom_app_bar.dart';
import 'package:brain_flower/widgets/custom_timer.dart';
import 'package:brain_flower/widgets/title_text.dart';
import 'package:brain_flower/widgets/white_divider.dart';
import 'package:flutter/material.dart';
import 'package:brain_flower/utils/extensions.dart';
import 'package:flutter/widgets.dart';

class MathMemoryGameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.primaryDarkBackgroundColor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Drawables.backgroundMoreLess),
              fit: BoxFit.cover),
        ),
        child: _buildMainContainer(context),
      ),
    );
  }

  Widget _buildMainContainer(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          right: context.screenWidth * 0.07,
          left: context.screenWidth * 0.07,
          top: context.screenHeight * 0.07,
          child: CustomAppBar(
            score: '0',
          ),
        ),
        Positioned(
          right: -context.screenWidth * 0.07,
          bottom: -context.screenHeight * 0.08,
          child: CustomTimer(
            isRestart: false,
            finishTimerListener: () {},
          ),
        ),
        Positioned(
          top: context.screenHeight * 0.13,
          right: context.screenWidth * 0.01,
          left: context.screenWidth * 0.01,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20.0),
              Transform.scale(
                  scale: 0.7,
                  child: MathMemoryCard(number: '-20', isNeedToRemember: true)),
              SizedBox(height: 20.0),
              MathMemoryCard(number: '+10', isNeedToRemember: true),
              SizedBox(height: 20.0),
              WhiteDivider(),
              MathKeyboard()
            ],
          ),
        ),
      ],
    );
  }
}

class MathMemoryCard extends StatelessWidget {
  final String number;
  final bool isNeedToRemember;

  const MathMemoryCard({@required this.number, this.isNeedToRemember});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight * 0.12,
      width: context.screenHeight * 0.14,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
                offset: Offset(0.0, 6.0),
                color: CustomColors.defaultShadowColor)
          ],
          color: CustomColors.cardMathMemoryColor),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Text(
              number,
              style: TextStyle(fontSize: 32, color: Colors.white),
            ),
          ),
          Positioned(
            right: 2.0,
            top: 2.0,
            child: Icon(
              Icons.bubble_chart,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class MathKeyboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: context.screenWidth * 0.2, vertical: 20.0),
          child: Wrap(
            runAlignment: WrapAlignment.center,
            spacing: context.screenWidth * 0.04,
            runSpacing: context.screenWidth * 0.04,
            children: _buildButtons(context),
          ),
        )
      ],
    );
  }

  Widget _buildButton(BuildContext context) {
    return Container(
      height: context.screenWidth * 0.10,
      width: context.screenWidth * 0.12,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          border: Border.all(color: Colors.white)),
    );
  }

  List<Widget> _buildButtons(BuildContext context) {
    var buttons = <Widget>[];
    for (int i = 1; i <= 9; i++) {
      buttons.add(Container(
        height: context.screenWidth * 0.10,
        width: context.screenWidth * 0.14,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          border: Border.all(color: Colors.white),
        ),
        child: Center(
          child: Text(
            i.toString(),
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
        ),
      ));
    }
    return buttons;
  }
}
