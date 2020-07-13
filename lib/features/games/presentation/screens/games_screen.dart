import 'package:auto_size_text/auto_size_text.dart';
import 'package:brain_flower/core/blocs/animations/header_animation_bloc.dart';
import 'package:brain_flower/core/blocs/animations/header_animation_state.dart';
import 'package:brain_flower/core/resources/animations.dart';
import 'package:brain_flower/core/resources/drawables.dart';
import 'package:brain_flower/core/resources/routes.dart';
import 'package:brain_flower/core/resources/text_styles.dart';
import 'package:brain_flower/features/games/data/models/game_types.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiver/collection.dart';
import 'package:brain_flower/core/utils/extensions.dart';

import '../widgets/game_card.dart';

class GamesScreen extends StatefulWidget {
  @override
  _GamesScreenState createState() => _GamesScreenState();
}

class _GamesScreenState extends State<GamesScreen> {
  ScrollController _scrollController;
  HeaderAnimationBloc _animationBloc;

  @override
  void initState() {
    _animationBloc = HeaderAnimationBloc();
    _scrollController = ScrollController()
      ..addListener(() {
        if (_scrollController.offset < 0 && _animationBloc.state.isPaused) {
          _animationBloc.add(false);
        } else if (_scrollController.offset >= 0 &&
            !_animationBloc.state.isPaused) {
          _animationBloc.add(true);
        }
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Align(
          alignment: Alignment.topCenter,
          child: BlocBuilder<HeaderAnimationBloc, HeaderAnimationState>(
            bloc: _animationBloc,
            builder: (context, state) {
              return Container(
                width: double.infinity,
                child: FlareActor(
                  Animations.headerAnimation,
                  animation: Animations.defaultAnimationName,
                  sizeFromArtboard: true,
                  fit: BoxFit.fitWidth,
                  isPaused: state.isPaused,
                ),
              );
            },
          ),
        ),
        Positioned(
          top: context.screenHeight * 0.06,
          left: context.screenWidth * 0.08,
          right: 0.0,
          child: AutoSizeText(
            'Игры',
            maxLines: 1,
            maxFontSize: 34.0,
            style: CustomTextStyle.headerTitle(),
          ),
        ),
        Positioned(
          top: context.screenHeight * 0.12,
          left: 0.0,
          right: 0.0,
          bottom: 0.0,
          child: SingleChildScrollView(
            controller: _scrollController,
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.only(top: context.screenHeight * 0.02),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ..._buildGamesSection(context, GameTypes.THINKING),
                    ..._buildGamesSection(context, GameTypes.MEMORY),
                    ..._buildGamesSection(context, GameTypes.REACTION),
                    ..._buildGamesSection(context, GameTypes.ATTENTION),
                    SizedBox(height: 20.0),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildGamesSection(BuildContext context, GameTypes gameType) {
    final List<Widget> widgets = [];
    final List<Widget> rowChildren = [];

    ///key is route, value is imageUri
    final Multimap<String, String> games = Multimap<String, String>();
    String title;

    final bool isLightThemeMode = context.isLightThemeMode;

    switch (gameType) {
      case GameTypes.THINKING:
        games.add(
            Routes.moreLessGame,
            isLightThemeMode
                ? Drawables.moreLessCardLight
                : Drawables.moreLessCardDark);
        games.add(
            Routes.dominoesGame,
            isLightThemeMode
                ? Drawables.dominoesCardLight
                : Drawables.dominoesCardDark);
        title = 'Мышление';
        break;

      case GameTypes.MEMORY:
        games.add(
            Routes.mathMemoryGame,
            isLightThemeMode
                ? Drawables.mathMemoryCardLight
                : Drawables.mathMemoryCardDark);
        games.add(
            '/',
            isLightThemeMode
                ? Drawables.moreLessCardLight
                : Drawables.moreLessCardDark);
        title = 'Память';
        break;

      case GameTypes.REACTION:
        games.add(
            '/',
            isLightThemeMode
                ? Drawables.moreLessCardLight
                : Drawables.moreLessCardDark);
        games.add(
            Routes.wateringFlowers,
            isLightThemeMode
                ? Drawables.wateringFlowersCardLight
                : Drawables.wateringFlowersCardDark);
        title = 'Реакция';
        break;

      case GameTypes.ATTENTION:
        games.add(
            Routes.findNumberGame,
            isLightThemeMode
                ? Drawables.findNumberCardLight
                : Drawables.findNumberCardDark);
        games.add(
            Routes.findObjectGame,
            isLightThemeMode
                ? Drawables.findObjectCardLight
                : Drawables.findObjectCardDark);
        title = 'Внимание';
        break;
    }

    games.forEach((route, imageUri) {
      Widget gameCard = GameCard(route: route, imageUri: imageUri);
      rowChildren.add(gameCard);
    });

    Widget titleWidget = Padding(
      padding: EdgeInsets.only(
        top: context.screenHeight * 0.04,
        left: context.screenWidth * 0.08,
      ),
      child: Text(
        title,
        style: CustomTextStyle.defaultText(context),
      ),
    );
    widgets.add(titleWidget);

    Widget rowGames = Padding(
      padding: EdgeInsets.symmetric(
        vertical: context.screenWidth * 0.02,
        horizontal: context.screenWidth * 0.07,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: rowChildren,
      ),
    );
    widgets.add(rowGames);
    return widgets;
  }
}
