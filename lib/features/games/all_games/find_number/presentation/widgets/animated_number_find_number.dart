import 'dart:collection';
import 'dart:math';

import 'package:brain_flower/core/resources/colors.dart';
import 'package:brain_flower/features/games/all_games/find_number/data/models/number_types_find_numbers.dart';
import 'package:brain_flower/core/utils/extensions.dart';
import 'package:flutter/material.dart';

class AnimatedNumberFindNumber extends StatefulWidget {
  final NumberTypesFindNumbers type;
  final Color color;
  final int number;
  final Function onTap;

  const AnimatedNumberFindNumber(
      {@required this.number, @required this.type, @required this.color, this.onTap});

  @override
  _AnimatedNumberFindNumberState createState() => _AnimatedNumberFindNumberState();
}

class _AnimatedNumberFindNumberState extends State<AnimatedNumberFindNumber> with TickerProviderStateMixin {
  AnimationController _animationController;
  Map<NumberTypesFindNumbers, AnimationController> _animationControllers = HashMap(); //TODO: to refactor
  ColorTween _colorTween;

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

  _initAnimation() {
    switch (widget.type) {
      case NumberTypesFindNumbers.SCALE:
        _animationController = AnimationController(
            vsync: this, duration: Duration(milliseconds: 500), lowerBound: 0.5, upperBound: 1.0);
        break;
      case NumberTypesFindNumbers.HALF_ROTATE:
        _animationController = AnimationController(
            vsync: this, duration: Duration(milliseconds: 1000), lowerBound: -0.1, upperBound: 0.1);
        break;
      case NumberTypesFindNumbers.COLORFUL:
        _animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 500));
        break;
      case NumberTypesFindNumbers.HORIZONTAL_TRANSLATE:
      case NumberTypesFindNumbers.VERTICAL_TRANSLATE:
        _animationController = AnimationController(
            vsync: this, duration: Duration(milliseconds: 500), lowerBound: -5.0, upperBound: 5.0);
        break;
      case NumberTypesFindNumbers.OPACITY:
        _animationController = AnimationController(
            vsync: this, duration: Duration(milliseconds: 500), lowerBound: 0.0, upperBound: 1.0);
        break;
      default:
        _animationController = AnimationController(
            vsync: this, duration: Duration(milliseconds: 500), lowerBound: 0.5, upperBound: 1.0);
    }

    if (widget.type == NumberTypesFindNumbers.COLORFUL) {
      var random = Random();
      var colorsCount = CustomColors.arrayColors.length;

      var colorBegin = CustomColors.arrayColors[random.nextInt(colorsCount)];
      var colorEnd = CustomColors.arrayColors[random.nextInt(colorsCount)];
      _colorTween = ColorTween(begin: colorBegin, end: colorEnd);
    }

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animationController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _animationController.forward();
      }
    });
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController?.dispose();
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
      onTap: () => widget.onTap(),
      child: Container(
        height: context.screenHeight * 0.05,
        width: context.screenWidth * 0.2,
        decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(10.0)),
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
        offset:
            isHorizontal ? Offset(0.0, _animationController.value) : Offset(_animationController.value, 0.0),
        child: _buildDefaultNumber(widget.color),
      ),
    );
  }

  Widget _buildColorfulNumber() {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return _buildDefaultNumber(_colorTween.animate(_animationController).value);
      },
    );
  }

  Widget _buildOpacityNumber() {
    return FadeTransition(
      opacity: _animationController,
      child: _buildDefaultNumber(widget.color),
    );
  }
}
