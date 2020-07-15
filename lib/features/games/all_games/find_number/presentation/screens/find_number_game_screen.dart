import 'package:brain_flower/core/resources/colors.dart';
import 'package:brain_flower/core/resources/drawables.dart';
import 'package:brain_flower/core/routes/router.gr.dart';
import 'package:brain_flower/core/utils/extensions.dart';
import 'package:brain_flower/core/widgets/title_text.dart';
import 'package:brain_flower/features/games/all_games/find_number/data/models/find_number_model.dart';
import 'package:brain_flower/features/games/all_games/find_number/presentation/blocs/find_number_game_bloc.dart';
import 'package:brain_flower/features/games/all_games/find_number/presentation/blocs/find_number_game_event.dart';
import 'package:brain_flower/features/games/all_games/find_number/presentation/blocs/find_number_game_state.dart';
import 'package:brain_flower/features/games/all_games/find_number/presentation/widgets/animated_number_find_number.dart';
import 'package:brain_flower/features/games/presentation/widgets/game_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FindNumberGameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<FindNumberGameBloc>(
      create: (context) => FindNumberGameBloc()..add(FindNumberGameEvent.initStartScreen()),
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
          child: BlocBuilder<FindNumberGameBloc, FindNumberGameState>(
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
      routeName: Routes.findNumberGame,
      gameContent: Positioned(
        top: context.screenHeight * 0.2,
        right: context.screenWidth * 0.01,
        left: context.screenWidth * 0.01,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TitleText(text: 'Найдите число: ${state.numberToSearch}', isCorrectAnswer: state.isCorrectAnswer),
            SizedBox(height: 40.0),
            Wrap(
                spacing: context.screenWidth * 0.1,
                runSpacing: context.screenHeight * 0.03,
                children: _generateNumbers(state.numbers, context))
          ],
        ),
      ),
    );
  }

  List<Widget> _generateNumbers(List<FindNumberModel> numbers, BuildContext context) {
    List<Widget> numbersList = [];
    numbers.forEach((number) {
      var numberWidget = AnimatedNumberFindNumber(
        number: number.number,
        type: number.type,
        color: number.color,
        onTap: () =>
            context.bloc<FindNumberGameBloc>().add(FindNumberGameEvent.selectNumber(number: number.number)),
      );
      numbersList.add(numberWidget);
    });
    return numbersList;
  }
}
