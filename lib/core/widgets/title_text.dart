import 'package:auto_size_text/auto_size_text.dart';
import 'package:brain_flower/core/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:brain_flower/core/utils/extensions.dart';

class TitleText extends StatefulWidget {
  final bool isCorrectAnswer;
  final String text;

  const TitleText({@required this.text, this.isCorrectAnswer});

  @override
  _TitleTextState createState() => _TitleTextState();
}

class _TitleTextState extends State<TitleText> with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation _colorTween;
  Color _textColor = Colors.white;

  @override
  void initState() {
    _initAnimation();
    super.initState();
  }

  @override
  void didUpdateWidget(TitleText oldWidget) {
    _initAnimation();
    super.didUpdateWidget(oldWidget);
  }

  void _initAnimation() {
    _animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 1000));
    if (widget.isCorrectAnswer != null) {
      if (widget.isCorrectAnswer) {
        _colorTween = ColorTween(begin: Colors.green[400], end: _textColor).animate(_animationController);
      } else {
        _colorTween = ColorTween(begin: Colors.red, end: _textColor).animate(_animationController);
      }
    }
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (context.isLightThemeMode) _textColor = CustomColors.defaultTextColor;
    return _animationController != null && _colorTween != null ? _buildAnimationText() : _buildText(true);
  }

  AnimatedBuilder _buildAnimationText() {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return _buildText(false);
      },
    );
  }

  Widget _buildText(bool isDefaultColor) {
    return Column(
      children: <Widget>[
        Container(
          width: context.screenWidth * 0.8,
          child: AutoSizeText(
            widget.text,
            textAlign: TextAlign.center,
            maxLines: 1,
            style: TextStyle(color: !isDefaultColor ? _colorTween.value : _textColor, fontSize: 24.0),
          ),
        ),
      ],
    );
  }
}
