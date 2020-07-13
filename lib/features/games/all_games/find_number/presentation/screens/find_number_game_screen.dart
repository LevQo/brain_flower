import 'package:brain_flower/core/resources/colors.dart';
import 'package:brain_flower/core/resources/drawables.dart';
import 'package:brain_flower/core/widgets/custom_app_bar.dart';
import 'package:brain_flower/core/widgets/custom_timer.dart';
import 'package:brain_flower/core/widgets/title_text.dart';
import 'package:brain_flower/features/games/all_games/find_number/presentation/blocs/find_number_game_bloc.dart';
import 'package:brain_flower/features/games/all_games/find_number/presentation/blocs/find_number_game_event.dart';
import 'package:brain_flower/features/games/all_games/find_number/presentation/blocs/find_number_game_state.dart';
import 'package:brain_flower/features/games/all_games/find_number/presentation/widgets/animated_number_find_number.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FindNumberGameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<FindNumberGameBloc>(
      create: (context) =>
          FindNumberGameBloc()..add(InitStartScreenFindNumber()),
      child: Scaffold(
        backgroundColor: CustomColors.backgroundFindNumberColor,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Drawables.backgroundMoreLess),
                fit: BoxFit.cover),
          ),
          child: BlocBuilder<FindNumberGameBloc, FindNumberGameState>(
            builder: (context, state) {
              if (state is GeneratedNumbersFindNumberState) {
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

  Widget _buildMainContainer(
      GeneratedNumbersFindNumberState state, BuildContext context) {
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
                  text: 'Найдите число: ${state.numberToSearch}',
                  isCorrectAnswer: state.isCorrectAnswer),
              SizedBox(height: 40.0),
              Wrap(
                  spacing: MediaQuery.of(context).size.width * 0.1,
                  runSpacing: MediaQuery.of(context).size.height * 0.03,
                  children: _generateNumbers(state))
            ],
          ),
        ),
      ],
    );
  }

  List<Widget> _generateNumbers(GeneratedNumbersFindNumberState state) {
    List<Widget> numbersList = [];
    state.numbers.forEach((number) {
      var numberWidget = AnimatedNumberFindNumber(
        number: number.number,
        type: number.type,
        color: number.color,
      );

      numbersList.add(numberWidget);
    });
    return numbersList;
  }
}
