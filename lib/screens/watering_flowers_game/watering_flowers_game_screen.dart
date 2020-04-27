import 'package:brain_flower/data/watering_flowers_game/flower_types_watering_flowers.dart';
import 'package:brain_flower/resources/colors.dart';
import 'package:brain_flower/resources/drawables.dart';
import 'package:brain_flower/widgets/custom_app_bar.dart';
import 'package:brain_flower/widgets/custom_timer.dart';
import 'package:brain_flower/widgets/title_text.dart';
import 'package:brain_flower/widgets/white_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:brain_flower/utils/extensions.dart';

class WateringFlowersGameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.primaryDarkBackgroundColor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Drawables.backgroundMoreLess),
              fit: BoxFit.cover),
        ),
        child: _buildMainContainer(context),
      ),
    );
  }

  Widget _buildMainContainer(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          right: context.screenWidth * 0.07,
          left: context.screenWidth * 0.07,
          top: context.screenHeight * 0.07,
          child: CustomAppBar(
            score: '0',
          ),
        ),
        Positioned(
          right: -context.screenWidth * 0.07,
          bottom: -context.screenHeight * 0.08,
          child: CustomTimer(
            isRestart: false,
            finishTimerListener: () {},
          ),
        ),
        Positioned(
          top: context.screenHeight * 0.2,
          right: context.screenWidth * 0.01,
          left: context.screenWidth * 0.01,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TitleText(
                  text: 'Не дайте цветку завянуть', isCorrectAnswer: null),
              SizedBox(height: 20.0),
              WhiteDivider(),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Wrap(
                  runSpacing: context.screenHeight * 0.04,
                  spacing: context.screenWidth * 0.1,
                  children: <Widget>[
                    FlowerWateringGameWidget(
                        type: FlowerTypesWateringFlowers.HEALTHY),
                    FlowerWateringGameWidget(
                        type: FlowerTypesWateringFlowers.HEALTHY),
                    FlowerWateringGameWidget(
                        type: FlowerTypesWateringFlowers.HEALTHY),
                    FlowerWateringGameWidget(
                        type: FlowerTypesWateringFlowers.HEALTHY),
                    FlowerWateringGameWidget(
                        type: FlowerTypesWateringFlowers.HEALTHY),
                    FlowerWateringGameWidget(
                        type: FlowerTypesWateringFlowers.HEALTHY),
                    FlowerWateringGameWidget(
                        type: FlowerTypesWateringFlowers.WILTED),
                    FlowerWateringGameWidget(
                        type: FlowerTypesWateringFlowers.WILTED),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class FlowerWateringGameWidget extends StatefulWidget {
  final FlowerTypesWateringFlowers type;

  const FlowerWateringGameWidget({this.type});

  @override
  _FlowerWateringGameWidgetState createState() =>
      _FlowerWateringGameWidgetState();
}

class _FlowerWateringGameWidgetState extends State<FlowerWateringGameWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  FlowerTypesWateringFlowers type;

  @override
  void initState() {
    type = widget.type;

    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 4));

    _animationController.forward();
    _animationController.addListener(() {
      setState(() {});
    });

    _animationController.addStatusListener((status) {
      if(status == AnimationStatus.completed){
        type = FlowerTypesWateringFlowers.WILTED;
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.12,
      child: SvgPicture.asset(
        type == FlowerTypesWateringFlowers.HEALTHY
            ? Drawables.healthyFlower
            : Drawables.wiltedFlower,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
