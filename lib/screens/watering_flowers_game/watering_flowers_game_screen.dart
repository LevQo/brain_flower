import 'dart:async';

import 'package:brain_flower/blocs/watering_flowers_game/watering_flowers_game_bloc.dart';
import 'package:brain_flower/blocs/watering_flowers_game/watering_flowers_game_event.dart';
import 'package:brain_flower/blocs/watering_flowers_game/watering_flowers_game_state.dart';
import 'package:brain_flower/data/watering_flowers_game/flower_types_watering_flowers.dart';
import 'package:brain_flower/data/watering_flowers_game/watering_flower_model.dart';
import 'package:brain_flower/resources/colors.dart';
import 'package:brain_flower/resources/drawables.dart';
import 'package:brain_flower/widgets/custom_app_bar.dart';
import 'package:brain_flower/widgets/custom_timer.dart';
import 'package:brain_flower/widgets/title_text.dart';
import 'package:brain_flower/widgets/white_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:brain_flower/utils/extensions.dart';
import 'package:rxdart/transformers.dart';

class WateringFlowersGameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<WateringFlowersGameBloc>(
      create: (context) =>
          WateringFlowersGameBloc()..add(InitStartScreenWateringFlowers()),
      child: Scaffold(
        backgroundColor: CustomColors.kPrimaryDarkColor,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Drawables.backgroundMoreLess),
                fit: BoxFit.cover),
          ),
          child: BlocBuilder<WateringFlowersGameBloc, WateringFlowersGameState>(
            builder: (context, state) {
              if (state is UpdatedWateringFlowersState) {
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

  Widget _buildMainContainer(
      BuildContext context, UpdatedWateringFlowersState state) {
    return Stack(
      children: <Widget>[
        Positioned(
          right: context.screenWidth * 0.07,
          left: context.screenWidth * 0.07,
          top: context.screenHeight * 0.07,
          child: CustomAppBar(
            score: state.scores.toString(),
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
                  text: 'Не дайте цветку завянуть',
                  isCorrectAnswer: state.isCorrectAnswer),
              SizedBox(height: 20.0),
              WhiteDivider(),
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
      ],
    );
  }

  Future<List<Widget>> _buildFlowers( //TODO to Stream
      List<WateringFlowerModel> flowers, BuildContext context) async {
    var flowerWidgets = <FlowerWateringGameWidget>[];
    flowers.forEach((flower) {
      var flowerWidget =
          FlowerWateringGameWidget(flower: flower);
      flowerWidgets.add(flowerWidget);
    });
    return flowerWidgets;
  }
}

class FlowerWateringGameWidget extends StatefulWidget {
  final WateringFlowerModel flower;

  const FlowerWateringGameWidget({this.flower});

  @override
  _FlowerWateringGameWidgetState createState() => _FlowerWateringGameWidgetState();
}

class _FlowerWateringGameWidgetState extends State<FlowerWateringGameWidget> {
  Timer _timer;
  var startTime = 0;

  @override
  void initState() {
    _initTimer();
    super.initState();
  }

  @override
  void didUpdateWidget(FlowerWateringGameWidget oldWidget) {
    if(oldWidget.flower.type != widget.flower.type) {
      _initTimer();
    }
    super.didUpdateWidget(oldWidget);
  }

  void _initTimer() {
    startTime = 0;
    _timer = new Timer.periodic(
      Duration(seconds: 1),
          (Timer timer) {
        if (startTime * 1000 >= widget.flower.timeToDowngrade) {
          timer.cancel();
          context
              .bloc<WateringFlowersGameBloc>()
              .add(ToUpdateFlowerGameEvent(widget.flower));
        } else {
          startTime = startTime + 1;
        }
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _buildFlower(context);
  }

  Widget _buildFlower(BuildContext context) {
    return GestureDetector(
        onTap: () {
          _timer.cancel();
          context
              .bloc<WateringFlowersGameBloc>()
              .add(ToWaterFlowerGameEvent(widget.flower));
        },
        child: Container(
          height: context.screenHeight * 0.1,
          width: context.screenWidth * 0.12,
          child: SvgPicture.asset(
            widget.flower.type == FlowerTypesWateringFlowers.HEALTHY
                ? Drawables.healthyFlower
                : Drawables.wiltedFlower,
            fit: BoxFit.fitHeight,
          ),
        ));
  }
}
