import 'package:auto_route/auto_route.dart';
import 'package:brain_flower/core/routes/router.gr.dart';
import 'package:brain_flower/core/widgets/custom_app_bar.dart';
import 'package:brain_flower/core/utils/extensions.dart';
import 'package:brain_flower/core/widgets/custom_timer.dart';
import 'package:flutter/material.dart';

class GameContainer extends StatelessWidget {
  final int scores;
  final String routeName;
  final bool isCorrectAnswer;
  final Widget gameContent;

  const GameContainer(
      {@required this.routeName, @required this.gameContent, this.scores, this.isCorrectAnswer})
      : assert(gameContent != null);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Positioned(
          right: context.screenWidth * 0.07,
          left: context.screenWidth * 0.07,
          top: context.screenHeight * 0.07,
          child: CustomAppBar(score: scores.toString()),
        ),
        Positioned(
          right: -context.screenWidth * 0.07,
          bottom: -context.screenHeight * 0.08,
          child: CustomTimer(
            onFinish: () => ExtendedNavigator.of(context).pushNamedAndRemoveUntil(
              Routes.resultGame,
              ModalRoute.withName(Routes.home),
              arguments: ResultGameScreenArguments(scores: scores, routeForRestart: routeName),
            ),
          ),
        ),
        gameContent
      ],
    );
  }
}
