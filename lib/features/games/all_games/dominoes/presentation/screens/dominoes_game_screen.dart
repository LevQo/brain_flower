import 'package:brain_flower/core/resources/colors.dart';
import 'package:brain_flower/core/resources/drawables.dart';
import 'package:brain_flower/core/resources/text_styles.dart';
import 'package:brain_flower/core/routes/router.gr.dart';
import 'package:brain_flower/core/utils/extensions.dart';
import 'package:brain_flower/core/widgets/title_text.dart';
import 'package:brain_flower/core/widgets/white_divider.dart';
import 'package:brain_flower/features/games/all_games/dominoes/presentation/blocs/dominoes_game_bloc.dart';
import 'package:brain_flower/features/games/all_games/dominoes/presentation/blocs/dominoes_game_event.dart';
import 'package:brain_flower/features/games/all_games/dominoes/presentation/blocs/dominoes_game_state.dart';
import 'package:brain_flower/features/games/all_games/dominoes/presentation/widgets/domino_widget.dart';
import 'package:brain_flower/features/games/presentation/widgets/game_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DominoesGameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<DominoesGameBloc>(
      create: (context) => DominoesGameBloc()..add(DominoesGameEvent.initStartScreen()),
      child: Scaffold(
        backgroundColor: context.isLightThemeMode
            ? CustomColors.backgroundGameLightColor
            : CustomColors.backgroundGameDarkColor,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(context.isLightThemeMode
                    ? Drawables.gamesBackgroundLight
                    : Drawables.gamesBackgroundDark),
                fit: BoxFit.cover),
          ),
          child: BlocBuilder<DominoesGameBloc, DominoesGameState>(
            builder: (context, state) {
              if (state is GeneratedDominoes) {
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

  Widget _buildMainContainer(BuildContext context, GeneratedDominoes state) {
    return GameContainer(
      scores: state.scores,
      isCorrectAnswer: state.isCorrectAnswer,
      routeName: Routes.dominoesGame,
      gameContent: Positioned(
        top: context.screenHeight * 0.2,
        right: context.screenWidth * 0.01,
        left: context.screenWidth * 0.01,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TitleText(text: 'Наложите домино', isCorrectAnswer: state.isCorrectAnswer),
            SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Domino(dots: state.firstDominoDots),
                SizedBox(width: 30.0),
                Text(
                  '+',
                  style: CustomTextStyle.defaultText(context).copyWith(fontSize: 30.0),
                ),
                SizedBox(width: 30.0),
                Domino(dots: state.secondDominoDots),
              ],
            ),
            SizedBox(height: 40.0),
            GameDivider(),
            SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _buildAnswersRow(context, state.dominoesForAnswer, state.correctAnswerPosition),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildAnswersRow(BuildContext context, List<List<bool>> answers, int correctAnswerPosition) {
    final answerDominoes = <Widget>[];
    for (int i = 0; i < answers.length; i++) {
      var domino = GestureDetector(
        onTap: () => context
            .bloc<DominoesGameBloc>()
            .add(DominoesGameEvent.selectDomino(isCorrectAnswer: i == correctAnswerPosition)),
        child: Domino(dots: answers[i]),
      );
      answerDominoes.add(domino);
    }
    return answerDominoes;
  }
}
