import 'package:brain_flower/blocs/dominoes_game/dominoes_game_bloc.dart';
import 'package:brain_flower/blocs/dominoes_game/dominoes_game_event.dart';
import 'package:brain_flower/blocs/dominoes_game/dominoes_game_state.dart';
import 'package:brain_flower/resources/colors.dart';
import 'package:brain_flower/resources/drawables.dart';
import 'package:brain_flower/widgets/custom_app_bar.dart';
import 'package:brain_flower/widgets/custom_timer.dart';
import 'package:brain_flower/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DominoesGameScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DominoesGameBloc>(
      create: (context) => DominoesGameBloc()..add(InitStartScreenDominoes()),
      child: Scaffold(
        backgroundColor: CustomColors.backgroundFindNumberColor,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Drawables.backgroundMoreLess),
                fit: BoxFit.cover),
          ),
          child: BlocBuilder<DominoesGameBloc, DominoesGameState>(
            builder: (context, state) {
              if (state is GeneratedDominoesState) {
                return _buildMainContainer(context, state);
              } else {
                return Container();
              }
            },
          ),
        ),
      ),
    );
  }

  Widget _buildMainContainer(
      BuildContext context, GeneratedDominoesState state) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Positioned(
            right: MediaQuery.of(context).size.width * 0.07,
            left: MediaQuery.of(context).size.width * 0.07,
            top: MediaQuery.of(context).size.height * 0.07,
            child: CustomAppBar(
              score: state.scores.toString(),
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
              TitleText(
                  text: 'Наложите домино',
                  isCorrectAnswer: state.isCorrectAnswer),
              SizedBox(height: 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Domino(dots: state.firstDominoDots),
                  SizedBox(width: 30.0),
                  Text(
                    '=>',
                    style: TextStyle(color: Colors.white, fontSize: 36.0),
                  ),
                  SizedBox(width: 30.0),
                  Domino(dots: state.secondDominoDots),
                ],
              ),
              SizedBox(height: 40.0),
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width * 0.8,
                height: 1.0,
              ),
              SizedBox(height: 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: _buildAnswersRow(context, state.dominoesForAnswer,
                    state.correctAnswerPosition),
              ),
            ],
          ),
        ),
      ],
    );
  }

  List<Widget> _buildAnswersRow(BuildContext context, List<List<bool>> answers,
      int correctAnswerPosition) {
    final answerDominoes = <Widget>[];
    for (int i = 0; i < answers.length; i++) {
      var domino = GestureDetector(
        onTap: () => context
            .bloc<DominoesGameBloc>()
            .add(SelectDominoEvent(i == correctAnswerPosition)),
        child: Domino(dots: answers[i]),
      );
      answerDominoes.add(domino);
    }
    return answerDominoes;
  }
}

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

  List<Widget> _buildDotsRange(
      BuildContext context, int startIndex, int endIndex) {
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
