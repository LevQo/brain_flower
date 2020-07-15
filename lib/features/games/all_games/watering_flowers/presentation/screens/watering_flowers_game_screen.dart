import 'dart:async';

import 'package:brain_flower/core/resources/colors.dart';
import 'package:brain_flower/core/resources/drawables.dart';
import 'package:brain_flower/core/routes/router.gr.dart';
import 'package:brain_flower/core/utils/extensions.dart';
import 'package:brain_flower/core/widgets/title_text.dart';
import 'package:brain_flower/core/widgets/white_divider.dart';
import 'package:brain_flower/features/games/all_games/watering_flowers/data/models/watering_flower_model.dart';
import 'package:brain_flower/features/games/all_games/watering_flowers/presentation/blocs/watering_flowers_game_bloc.dart';
import 'package:brain_flower/features/games/all_games/watering_flowers/presentation/blocs/watering_flowers_game_event.dart';
import 'package:brain_flower/features/games/all_games/watering_flowers/presentation/blocs/watering_flowers_game_state.dart';
import 'package:brain_flower/features/games/all_games/watering_flowers/presentation/widgets/flower_watering_game_widget.dart';
import 'package:brain_flower/features/games/presentation/widgets/game_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WateringFlowersGameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<WateringFlowersGameBloc>(
      create: (context) => WateringFlowersGameBloc()..add(WateringFlowersGameEvent.initStartScreen()),
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
          child: BlocBuilder<WateringFlowersGameBloc, WateringFlowersGameState>(
            builder: (context, state) {
              if (state is UpdatedFlower) {
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

  Widget _buildMainContainer(BuildContext context, UpdatedFlower state) {
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
            TitleText(text: 'Не дайте цветку завянуть', isCorrectAnswer: state.isCorrectAnswer),
            SizedBox(height: 20.0),
            GameDivider(),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: FutureBuilder<List<Widget>>(
                future: _buildFlowers(state.flowers, context),
                builder: (context, snapshot) {
                  return Wrap(
                    runSpacing: context.screenHeight * 0.04,
                    spacing: context.screenWidth * 0.1,
                    children: snapshot.hasData ? snapshot.data : [],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

// TODO: Refactoring to Stream
  Future<List<Widget>> _buildFlowers(List<WateringFlowerModel> flowers, BuildContext context) async {
    var flowerWidgets = <FlowerWateringGameWidget>[];
    flowers.forEach((flower) {
      var flowerWidget = FlowerWateringGameWidget(
        flower: flower,
        toWater: () => context
            .bloc<WateringFlowersGameBloc>()
            .add(WateringFlowersGameEvent.toWaterFlower(flower: flower)),
        toUpdate: () => context
            .bloc<WateringFlowersGameBloc>()
            .add(WateringFlowersGameEvent.toUpdateFlower(flower: flower)),
      );
      flowerWidgets.add(flowerWidget);
    });
    return flowerWidgets;
  }
}
