import 'package:auto_size_text/auto_size_text.dart';
import 'package:brain_flower/data/games/game_types.dart';
import 'package:brain_flower/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:brain_flower/utils/extensions.dart';
import 'package:quiver/collection.dart';

class GamesScreen extends StatefulWidget {
  @override
  _GamesScreenState createState() => _GamesScreenState();
}

class _GamesScreenState extends State<GamesScreen> {
  ScrollController _scrollController;
  bool isSwipeToBottom = false;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        if (_scrollController.offset < 0 && !isSwipeToBottom) {
//          setState(() => isSwipeToBottom = true);
        } else if (_scrollController.offset >= 0 && isSwipeToBottom) {
//          setState(() => isSwipeToBottom = false);
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
              child: Container(
                color: CustomColors.kPrimaryColor,
                height: context.screenHeight * 0.1,
                width: double.infinity,
              ),
            ),
            Positioned(
              top: context.screenHeight * 0.02,
              left: 0.0,
              right: 0.0,
              child:
                  _buildHeaderBackground(context, isAnimation: isSwipeToBottom),
            ),
            Positioned(
              top: context.screenHeight * 0.06,
              left: context.screenWidth * 0.08,
              right: 0.0,
              child: AutoSizeText(
                'Игры',
                maxLines: 1,
                maxFontSize: 34.0,
                style: TextStyle(
                    fontSize: 34.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
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
                      color: CustomColors.kPrimaryDarkBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24.0),
                        topRight: Radius.circular(24.0),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        GameSection(gameType: GameTypes.THINKING),
                        GameSection(gameType: GameTypes.MEMORY),
                        GameSection(gameType: GameTypes.REACTION),
                        GameSection(gameType: GameTypes.ATTENTION),
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

  Widget _buildHeaderBackground(BuildContext context, {bool isAnimation}) {
    return isAnimation
        ? SizedBox(
            height: context.screenHeight * 0.2,
            child: LottieBuilder.asset(
              'assets/lottie_animations/header_animation.zip',
              animate: true,
            ),
          )
        : Image.asset(
            'assets/images/header_background.png',
            fit: BoxFit.fitWidth,
          );
  }
}

class GameSection extends StatelessWidget {
  final GameTypes gameType;

  const GameSection({@required this.gameType});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _getChildren(context),
      ),
    );
  }

  List<Widget> _getChildren(BuildContext context) {
    final List<Widget> widgets = [];
    final List<Widget> rowChildren = [];

    ///key is route, value is imageUri
    final Multimap<String, String> games = Multimap<String, String>();
    String title;

    switch (gameType) {
      case GameTypes.THINKING:
        games.add('/more_less_game', 'assets/images/more_less_card_dark.png');
        games.add('/dominoes_game', 'assets/images/dominoes_card_dark.png');
        title = 'Мышление';
        break;
      case GameTypes.MEMORY:
        games.add(
            '/math_memory_game', 'assets/images/math_memory_card_dark.png');
        games.add('/more_less_game2', 'assets/images/more_less_card_dark.png');
        title = 'Память';
        break;
      case GameTypes.REACTION:
        games.add(
            '/more_less_game1', 'assets/images/shapes_game_card_dark.png');
        games.add('/watering_flowers_game',
            'assets/images/watering_flowers_card_dark.png');
        title = 'Реакция';
        break;
      case GameTypes.ATTENTION:
        games.add(
            '/find_number_game', 'assets/images/find_number_card_dark.png');
        games.add(
            '/find_object_game', 'assets/images/find_object_card_dark.png');
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
        style: TextStyle(fontSize: 20.0, color: Colors.white),
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

class GameCard extends StatefulWidget {
  final String route;
  final String imageUri;

  const GameCard({this.route, this.imageUri});

  @override
  _GameCardState createState() => _GameCardState();
}

class _GameCardState extends State<GameCard>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _tapAnimation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );
    _tapAnimation = Tween(begin: 1.0, end: 0.9).animate(_animationController);
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) => _animationController.forward(),
      onTapCancel: () => _animationController.reverse(),
      onTap: () {
        _animationController.reverse();
        Navigator.pushNamed(context, widget.route);
      },
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Transform.scale(
            scale: _tapAnimation.value,
            child: Container(
              width: context.screenWidth * 0.41,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.kShadowDarkColor,
                    blurRadius: 2,
                  )
                ],
              ),
              child: Image.asset(
                widget.imageUri,
                fit: BoxFit.fitWidth,
              ),
            ),
          );
        },
      ),
    );
  }
}
