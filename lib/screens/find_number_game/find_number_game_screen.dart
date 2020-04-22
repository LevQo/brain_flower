import 'dart:math';

import 'package:brain_flower/blocs/find_number_game/find_number_game_bloc.dart';
import 'package:brain_flower/blocs/find_number_game/find_number_game_event.dart';
import 'package:brain_flower/blocs/find_number_game/find_number_game_state.dart';
import 'package:brain_flower/data/find_number_game/number_types_find_numbers.dart';
import 'package:brain_flower/resources/colors.dart';
import 'package:brain_flower/resources/drawables.dart';
import 'package:brain_flower/widgets/custom_app_bar.dart';
import 'package:brain_flower/widgets/custom_timer.dart';
import 'package:brain_flower/widgets/title_text.dart';
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
                  text: 'Найдите число ${state.numberToSearch}',
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

class AnimatedNumberFindNumber extends StatefulWidget {
  final NumberTypesFindNumbers type;
  final Color color;
  final int number;

  const AnimatedNumberFindNumber(
      {@required this.number, @required this.type, @required this.color});

  @override
  _AnimatedNumberFindNumberState createState() =>
      _AnimatedNumberFindNumberState();
}

class _AnimatedNumberFindNumberState extends State<AnimatedNumberFindNumber>
    with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _translateAnimation;
  Animation _colorTween;

  @override
  void initState() {
    _initAnimation();
    super.initState();
  }

  @override
  void didUpdateWidget(AnimatedNumberFindNumber oldWidget) {
    _initAnimation();
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    switch (widget.type) {
      case NumberTypesFindNumbers.SCALE:
        return _buildScaleNumber();
        break;
      case NumberTypesFindNumbers.ROTATE:
      case NumberTypesFindNumbers.HALF_ROTATE:
        return _buildRotationNumber();
        break;
      case NumberTypesFindNumbers.COLORFUL:
        return _buildColorfulNumber();
        break;
      case NumberTypesFindNumbers.HORIZONTAL_TRANSLATE:
        return _buildTranslateNumber(true);
        break;
      case NumberTypesFindNumbers.VERTICAL_TRANSLATE:
        return _buildTranslateNumber(false);
        break;
      case NumberTypesFindNumbers.OPACITY:
        return _buildOpacityNumber();
        break;
      default:
        return _buildDefaultNumber(widget.color);
    }
  }

  Widget _buildDefaultNumber(Color color) {
    return GestureDetector(
      onTap: () {
        context
            .bloc<FindNumberGameBloc>()
            .add(SelectNumberFindNumberEvent(number: widget.number));
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.05,
        width: MediaQuery.of(context).size.width * 0.2,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10.0)),
        child: Center(
            child: Text(
          widget.number.toString(),
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        )),
      ),
    );
  }

  Widget buildVerticalTranslateNumber() {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) => Transform.translate(
        offset: Offset(0.0, _translateAnimation.value),
        child: _buildDefaultNumber(widget.color),
      ),
    );
  }

  Widget _buildRotationNumber() {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) => RotationTransition(
        turns: Tween(begin: 0.0, end: 1.0).animate(_animationController),
        child: _buildDefaultNumber(widget.color),
      ),
    );
  }

  Widget _buildScaleNumber() {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) => Transform.scale(
        scale: _animationController.value,
        child: _buildDefaultNumber(widget.color),
      ),
    );
  }

  Widget _buildTranslateNumber(bool isHorizontal) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) => Transform.translate(
        offset: isHorizontal
            ? Offset(0.0, _animationController.value)
            : Offset(_animationController.value, 0.0),
        child: _buildDefaultNumber(widget.color),
      ),
    );
  }

  Widget _buildColorfulNumber() {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return _buildDefaultNumber(_colorTween.value);
      },
    );
  }

  Widget _buildOpacityNumber() {
    return FadeTransition(
      opacity: _animationController,
      child: _buildDefaultNumber(widget.color),
    );
  }

  _initAnimation() {
    _animationController = null;

    switch (widget.type) {
      case NumberTypesFindNumbers.DEFAULT:
        _animationController = null;
        break;

      case NumberTypesFindNumbers.SCALE:
        _animationController = AnimationController(
          vsync: this,
          duration: Duration(milliseconds: 500),
          lowerBound: 0.5,
          upperBound: 1.0,
        );
        break;

      case NumberTypesFindNumbers.ROTATE:
        _animationController = AnimationController(
          vsync: this,
          duration: Duration(milliseconds: 5000),
          lowerBound: 0.0,
          upperBound: 1.0,
        );
        break;

      case NumberTypesFindNumbers.HALF_ROTATE:
        _animationController = AnimationController(
          vsync: this,
          duration: Duration(milliseconds: 10000),
          lowerBound: -1.0,
          upperBound: 1.0,
        );
        _animationController.value = 0;

        _animationController.addListener(() {
          if (_animationController.value > 0.1) {
            _animationController.reverse();
          }
          if (_animationController.value < -0.1) {
            _animationController.forward();
          }
        });
        break;

      case NumberTypesFindNumbers.COLORFUL:
        _animationController = AnimationController(
            vsync: this, duration: Duration(milliseconds: 500));

        var random = Random();
        var colorsCount = CustomColors.arrayColors.length;

        var colorBegin = CustomColors.arrayColors[random.nextInt(colorsCount)];
        var colorEnd = CustomColors.arrayColors[random.nextInt(colorsCount)];
        _colorTween = ColorTween(begin: colorBegin, end: colorEnd)
            .animate(_animationController);
        break;

      case NumberTypesFindNumbers.VERTICAL_TRANSLATE:
      case NumberTypesFindNumbers.HORIZONTAL_TRANSLATE:
        _animationController = AnimationController(
            vsync: this,
            duration: Duration(milliseconds: 500),
            lowerBound: -5.0,
            upperBound: 5.0);
        break;

      case NumberTypesFindNumbers.OPACITY:
        _animationController = AnimationController(
            vsync: this,
            duration: Duration(milliseconds: 500),
            lowerBound: 0.0,
            upperBound: 1.0)..repeat();
        break;

      default:
        _animationController = AnimationController(
          vsync: this,
          duration: Duration(milliseconds: 2000),
          lowerBound: 0.0,
          upperBound: 1.0,
        );
    }

    if (_animationController != null) {
      _animationController.reset();

      _translateAnimation =
          Tween(begin: -50.0, end: 50.0).animate(_animationController);
      _animationController.forward();

      _animationController.addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          switch (widget.type) {
            case NumberTypesFindNumbers.SCALE:
              _animationController.reverse();
              break;
            case NumberTypesFindNumbers.ROTATE:
              _animationController.value = 0.0;
              _animationController.forward();
              break;
            default:
              _animationController.reverse();
          }
        } else if (status == AnimationStatus.dismissed) {
          switch (widget.type) {
            case NumberTypesFindNumbers.SCALE:
              _animationController.forward();
              break;
            case NumberTypesFindNumbers.ROTATE:
              break;
            default:
//              print("Dismissed ${widget.number}");
//              _animationController.forward();
          }
        }
      });
    }
  }
}
