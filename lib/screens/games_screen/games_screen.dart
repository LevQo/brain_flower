import 'package:auto_size_text/auto_size_text.dart';
import 'package:brain_flower/resources/colors.dart';
import 'package:brain_flower/resources/drawables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:brain_flower/utils/extensions.dart';

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
//          setState(() => isSwipeToBottom = false);
        } else if (_scrollController.offset >= 0 && isSwipeToBottom) {
//          setState(() => isSwipeToBottom = false);
        }
      });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget _buildItem(String gameText, String route) {
      return GestureDetector(
        onTap: () => Navigator.pushNamed(context, route),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Align(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.12,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: CustomColors.defaultShadowColor,
                        blurRadius: 10.0,
                        offset: Offset(0.0, 4.0))
                  ]),
              child: Center(
                child: Text(
                  gameText,
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: CustomColors.kGreenLayerBackgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: CustomColors.kBottomNavigationDarkColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.videogame_asset,
              color: CustomColors.kGreenLayerBackgroundColor,
            ),
            title: Text(
              'Игры',
              style: TextStyle(color: CustomColors.kGreenLayerBackgroundColor),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.videogame_asset,
              color: Colors.white,
            ),
            backgroundColor: CustomColors.kGreenLayerBackgroundColor,
            title: Text(
              'Игры',
              style: TextStyle(color: Colors.white),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.videogame_asset,
              color: Colors.white,
            ),
            backgroundColor: CustomColors.kGreenLayerBackgroundColor,
            title: Text(
              'Игры',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              color: CustomColors.kHeaderBackgroundColor,
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
            left: context.screenWidth * 0.1,
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
                      Padding(
                        padding: EdgeInsets.only(
                            top: context.screenHeight * 0.02,
                            left: context.screenWidth * 0.1),
                        child: Text(
                          'Мышление',
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            width: context.screenWidth * 0.4,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: CustomColors.defaultShadowColor,
                                  blurRadius: 2,
                                )
                              ],
                            ),
                            child: SvgPicture.asset(
                                'assets/images/more_less_card_dark.svg'),
                          ),
                          Container(
                            width: context.screenWidth * 0.4,
                            child: SvgPicture.asset(
                                'assets/images/more_less_card_dark.svg'),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: context.screenHeight * 0.02,
                            left: context.screenWidth * 0.1),
                        child: Text(
                          'Мышление',
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            width: context.screenWidth * 0.4,
                            child: SvgPicture.asset(
                                'assets/images/more_less_card_dark.svg'),
                          ),
                          Container(
                            width: context.screenWidth * 0.4,
                            child: SvgPicture.asset(
                                'assets/images/more_less_card_dark.svg'),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: context.screenHeight * 0.02,
                            left: context.screenWidth * 0.1),
                        child: Text(
                          'Мышление',
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            width: context.screenWidth * 0.4,
                            child: SvgPicture.asset(
                                'assets/images/more_less_card_dark.svg'),
                          ),
                          Container(
                            width: context.screenWidth * 0.4,
                            child: SvgPicture.asset(
                                'assets/images/more_less_card_dark.svg'),
                          ),
                        ],
                      ),
                      _buildItem('Больше меньше', '/more_less_game'),
                      _buildItem('Найти число', '/find_number_game'),
                      _buildItem('Домино', '/dominoes_game'),
                      _buildItem('Найти объект', '/find_object_game'),
                      _buildItem('Цифры на память', '/math_memory_game'),
                      _buildItem('Цифры на память', '/math_memory_game'),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderBackground(BuildContext context, {bool isAnimation}) {
    return isAnimation
        ? SizedBox(
            height: context.screenHeight * 0.2,
            child:
                LottieBuilder.asset('assets/lottie_animations/test_anim.json'),
          )
        : Image.asset(
            'assets/images/header_background.png',
            fit: BoxFit.fitWidth,
          );
  }

  List<Widget> _buildGamesSection() {
    List<Widget> widgets = [];

//    var title =
  }
}
