import 'dart:collection';
import 'dart:math';

import 'package:brain_flower/blocs/find_number_game/find_number_game_bloc.dart';
import 'package:brain_flower/blocs/find_number_game/find_number_game_event.dart';
import 'package:brain_flower/data/find_number_game/number_types_find_numbers.dart';
import 'package:brain_flower/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  Map<NumberTypesFindNumbers, AnimationController> _animationControllers =
  HashMap();
  ColorTween _colorTween;

  @override
  void initState() {
    _initAnimation();
    super.initState();
  }

  @override
  void didUpdateWidget(AnimatedNumberFindNumber oldWidget) {
    _animationControllers.forEach((_, controller){
      controller.dispose();
    });
    _initAnimation();
    super.didUpdateWidget(oldWidget);
  }

  _initAnimation() {
    _animationControllers = {
      NumberTypesFindNumbers.SCALE: AnimationController(
          vsync: this,
          duration: Duration(milliseconds: 500),
          lowerBound: 0.5,
          upperBound: 1.0),
      NumberTypesFindNumbers.VERTICAL_TRANSLATE: AnimationController(
          vsync: this,
          duration: Duration(milliseconds: 500),
          lowerBound: -5.0,
          upperBound: 5.0),
      NumberTypesFindNumbers.HALF_ROTATE: AnimationController(
          vsync: this,
          duration: Duration(milliseconds: 1000),
          lowerBound: -0.1,
          upperBound: 0.1),
      NumberTypesFindNumbers.COLORFUL: AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 500),
      ),
      NumberTypesFindNumbers.OPACITY: AnimationController(
          vsync: this,
          duration: Duration(milliseconds: 500),
          lowerBound: 0.0,
          upperBound: 1.0)
    };

    if (widget.type == NumberTypesFindNumbers.COLORFUL) {
      var random = Random();
      var colorsCount = CustomColors.arrayColors.length;

      var colorBegin = CustomColors.arrayColors[random.nextInt(colorsCount)];
      var colorEnd = CustomColors.arrayColors[random.nextInt(colorsCount)];
      _colorTween = ColorTween(begin: colorBegin, end: colorEnd);
    }

    _animationControllers.forEach((_, controller) {
      controller.addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      });

      controller.forward();
    });


  }

  @override
  void dispose() {
    _animationControllers.forEach((_, controller){
      controller.dispose();
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    switch (widget.type) {
      case NumberTypesFindNumbers.SCALE:
        return _buildScaleNumber();
        break;
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

  Widget _buildRotationNumber() {
    return AnimatedBuilder(
      animation: _animationControllers[NumberTypesFindNumbers.HALF_ROTATE],
      builder: (context, child) => RotationTransition(
        turns: Tween(begin: 0.0, end: 1.0)
            .animate(_animationControllers[NumberTypesFindNumbers.HALF_ROTATE]),
        child: _buildDefaultNumber(widget.color),
      ),
    );
  }

  Widget _buildScaleNumber() {
    return AnimatedBuilder(
      animation: _animationControllers[NumberTypesFindNumbers.SCALE],
      builder: (context, child) => Transform.scale(
        scale: _animationControllers[NumberTypesFindNumbers.SCALE].value,
        child: _buildDefaultNumber(widget.color),
      ),
    );
  }

  Widget _buildTranslateNumber(bool isHorizontal) {
    return AnimatedBuilder(
      animation:
      _animationControllers[NumberTypesFindNumbers.VERTICAL_TRANSLATE],
      builder: (context, child) => Transform.translate(
        offset: isHorizontal
            ? Offset(
            0.0,
            _animationControllers[NumberTypesFindNumbers.VERTICAL_TRANSLATE]
                .value)
            : Offset(
            _animationControllers[NumberTypesFindNumbers.VERTICAL_TRANSLATE]
                .value,
            0.0),
        child: _buildDefaultNumber(widget.color),
      ),
    );
  }

  Widget _buildColorfulNumber() {
    return AnimatedBuilder(
      animation: _animationControllers[NumberTypesFindNumbers.COLORFUL],
      builder: (context, child) {
        return _buildDefaultNumber(_colorTween
            .animate(_animationControllers[NumberTypesFindNumbers.COLORFUL])
            .value);
      },
    );
  }

  Widget _buildOpacityNumber() {
    return FadeTransition(
      opacity: _animationControllers[NumberTypesFindNumbers.OPACITY],
      child: _buildDefaultNumber(widget.color),
    );
  }
}
