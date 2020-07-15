import 'package:brain_flower/core/resources/colors.dart';
import 'package:brain_flower/core/resources/drawables.dart';
import 'package:brain_flower/core/routes/router.gr.dart';
import 'package:brain_flower/core/widgets/custom_app_bar.dart';
import 'package:brain_flower/core/widgets/custom_timer.dart';
import 'package:brain_flower/core/widgets/white_divider.dart';
import 'package:brain_flower/features/games/all_games/math_memory/presentation/blocs/math_memory_game_bloc.dart';
import 'package:brain_flower/features/games/all_games/math_memory/presentation/blocs/math_memory_game_event.dart';
import 'package:brain_flower/features/games/all_games/math_memory/presentation/blocs/math_memory_game_state.dart';
import 'package:brain_flower/features/games/all_games/math_memory/presentation/widgets/math_keyboard.dart';
import 'package:brain_flower/features/games/all_games/math_memory/presentation/widgets/math_memory_card.dart';
import 'package:brain_flower/features/games/presentation/widgets/game_background.dart';
import 'package:flutter/material.dart';
import 'package:brain_flower/core/utils/extensions.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MathMemoryGameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<MathMemoryGameBloc>(
      create: (context) => MathMemoryGameBloc()..add(MathMemoryGameEvent.initStartScreen()),
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
          child: BlocBuilder<MathMemoryGameBloc, MathMemoryGameState>(
            builder: (context, state) {
              if (state is GeneratedMathCards) {
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

  Widget _buildMainContainer(BuildContext context, GeneratedMathCards state) {
    return GameContainer(
      scores: state.scores,
      isCorrectAnswer: state.isCorrectAnswer,
      routeName: Routes.dominoesGame,
      gameContent: Positioned(
        top: context.screenHeight * 0.13,
        right: context.screenWidth * 0.01,
        left: context.screenWidth * 0.01,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20.0),
            Transform.scale(
                scale: 0.7,
                child: MathMemoryCard(
                  number: state.nextNumber.number,
                  isNeedToRemember: state.nextNumber.isNeedToRemember,
                  isMemorizedNumber: state.nextNumber.isMemorizedNumber,
                )),
            SizedBox(height: 20.0),
            MathMemoryCard(
              number: state.currentNumber.number,
              isNeedToRemember: state.currentNumber.isNeedToRemember,
              isMemorizedNumber: state.currentNumber.isMemorizedNumber,
            ),
            SizedBox(height: 20.0),
            GameDivider(),
            MathKeyboard(
              correctNumber: state.correctNumber,
              onKeyTap: (number) => context.bloc<MathMemoryGameBloc>().add(
                    MathMemoryGameEvent.toAnswer(number: number),
                  ),
            )
          ],
        ),
      ),
    );
  }
}
