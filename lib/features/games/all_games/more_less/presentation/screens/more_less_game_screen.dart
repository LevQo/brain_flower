import 'package:brain_flower/core/resources/colors.dart';
import 'package:brain_flower/core/resources/drawables.dart';
import 'package:brain_flower/core/routes/router.gr.dart';
import 'package:brain_flower/core/widgets/custom_app_bar.dart';
import 'package:brain_flower/core/widgets/custom_timer.dart';
import 'package:brain_flower/core/widgets/title_text.dart';
import 'package:brain_flower/core/utils/extensions.dart';
import 'package:brain_flower/features/games/all_games/more_less/data/models/answer_types_more_less.dart';
import 'package:brain_flower/features/games/all_games/more_less/presentation/blocs/more_less_game_bloc.dart';
import 'package:brain_flower/features/games/all_games/more_less/presentation/blocs/more_less_game_event.dart';
import 'package:brain_flower/features/games/all_games/more_less/presentation/blocs/more_less_game_state.dart';
import 'package:brain_flower/features/games/all_games/more_less/presentation/widgets/number_container_more_less.dart';
import 'package:brain_flower/features/games/presentation/widgets/game_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoreLessGameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<MoreLessGameBloc>(
      create: (context) => MoreLessGameBloc()..add(MoreLessGameEvent.initStartScreen()),
      child: Scaffold(
        backgroundColor: context.isLightThemeMode
            ? CustomColors.backgroundGameLightColor
            : CustomColors.backgroundGameDarkColor,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
                context.isLightThemeMode ? Drawables.gamesBackgroundLight : Drawables.gamesBackgroundDark),
            fit: BoxFit.cover,
          )),
          child: BlocBuilder<MoreLessGameBloc, MoreLessGameState>(
            builder: (context, state) {
              if (state is GeneratedNumbers) {
                return _buildMainContainer(state, context);
              } else {
                return Container();
              }
            },
          ),
        ),
      ),
    );
  }

  Widget _buildMainContainer(GeneratedNumbers state, BuildContext context) {
    return GameContainer(
      scores: state.scores,
      isCorrectAnswer: state.isCorrectAnswer,
      routeName: Routes.moreLessGame,
      gameContent: FractionallySizedBox(
        alignment: Alignment.center,
        widthFactor: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TitleText(
              text: 'Какое число больше?',
              isCorrectAnswer: state.isCorrectAnswer,
            ),
            SizedBox(height: 30.0),
            NumberContainerMoreLess(
              text: state.firstNumber,
              type: AnswerTypesMoreLess.firstNumber,
              onTap: () => context
                  .bloc<MoreLessGameBloc>()
                  .add(MoreLessGameEvent.selectAnswer(answerType: AnswerTypesMoreLess.firstNumber)),
            ),
            SizedBox(height: 20.0),
            NumberContainerMoreLess(
              text: state.secondNumber,
              type: AnswerTypesMoreLess.secondNumber,
              onTap: () => context
                  .bloc<MoreLessGameBloc>()
                  .add(MoreLessGameEvent.selectAnswer(answerType: AnswerTypesMoreLess.secondNumber)),
            ),
            SizedBox(height: 20.0),
            NumberContainerMoreLess(
              text: '=',
              type: AnswerTypesMoreLess.equal,
              onTap: () => context
                  .bloc<MoreLessGameBloc>()
                  .add(MoreLessGameEvent.selectAnswer(answerType: AnswerTypesMoreLess.equal)),
            ),
          ],
        ),
      ),
    );
  }
}
