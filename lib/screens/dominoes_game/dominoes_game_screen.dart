import 'package:brain_flower/resources/colors.dart';
import 'package:brain_flower/resources/drawables.dart';
import 'package:brain_flower/widgets/custom_app_bar.dart';
import 'package:brain_flower/widgets/custom_timer.dart';
import 'package:brain_flower/widgets/title_text.dart';
import 'package:flutter/material.dart';

class DominoesGameScreen extends StatelessWidget {
  List<bool> domino1 = [];
  List<bool> domino2 = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgroundFindNumberColor,
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
    List<bool> dominoDotsStatus1 = [
      true,
      true,
      true,
      true,
      false,
      false,
      true,
      false,
      true
    ];

    domino1 = dominoDotsStatus1;

    List<Widget> dominoDots1 = [];

    dominoDotsStatus1.forEach((isVisible) {
      var dot = _buildDominoDot(context, isVisible);
      dominoDots1.add(dot);
    });

    List<bool> dominoDotsStatus2 = [
      true,
      true,
      true,
      true,
      true,
      true,
      true,
      true,
      true
    ];

    domino2 = dominoDotsStatus2;

    List<Widget> dominoDots2 = [];

    dominoDotsStatus2.forEach((isVisible) {
      var dot = _buildDominoDot(context, isVisible);
      dominoDots2.add(dot);
    });

    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Positioned(
            right: MediaQuery.of(context).size.width * 0.07,
            left: MediaQuery.of(context).size.width * 0.07,
            top: MediaQuery.of(context).size.height * 0.07,
            child: CustomAppBar(
              score: '0',
            )),
        Positioned(
          right: -MediaQuery.of(context).size.width * 0.07,
          bottom: -MediaQuery.of(context).size.height * 0.08,
          child: CustomTimer(
            isRestart: false,
            finishTimerListener: () {},
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.2,
          right: MediaQuery.of(context).size.width * 0.01,
          left: MediaQuery.of(context).size.width * 0.01,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TitleText(text: 'Сложите домино', isCorrectAnswer: true),
              SizedBox(height: 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  buildDominoContainer(context, dominoDots1),
                  SizedBox(width: 30.0),
                  GestureDetector(
                    onTap: () => _checkAnswer(),
                    child: Text(
                      '+',
                      style: TextStyle(color: Colors.white, fontSize: 36.0),
                    ),
                  ),
                  SizedBox(width: 30.0),
                  buildDominoContainer(context, dominoDots2),
                ],
              ),
              SizedBox(height: 30.0),
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width * 0.8,
                height: 1.0,
              ),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  buildDominoContainer(context, dominoDots1),
                  SizedBox(width: 30.0),
                  buildDominoContainer(context, dominoDots2),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  _checkAnswer() {
    List<bool> resultArray = [];

    for (int i = 0; i < domino1.length; i++) {
      bool isActive = domino1[i] != domino2[i];
      resultArray.add(isActive);
    }

    print(resultArray);
  }

  Container buildDominoContainer(
      BuildContext context, List<Widget> dominoDots) {
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
              children: <Widget>[
                dominoDots[0],
                dominoDots[1],
                dominoDots[2],
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                dominoDots[3],
                dominoDots[4],
                dominoDots[5],
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                dominoDots[6],
                dominoDots[7],
                dominoDots[8],
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container _buildDominoDot(BuildContext context, bool isVisible) {
    return isVisible
        ? Container(
            height: MediaQuery.of(context).size.width * 0.04,
            width: MediaQuery.of(context).size.width * 0.04,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.purpleAccent),
          )
        : Container(
            height: MediaQuery.of(context).size.width * 0.04,
            width: MediaQuery.of(context).size.width * 0.04,
            color: Colors.white,
          );
  }
}
