import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

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
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 1000));

    if (widget.isCorrectAnswer != null) {
      if (widget.isCorrectAnswer) {
        _colorTween = ColorTween(begin: Colors.green[400], end: Colors.white)
            .animate(_animationController);
      } else {
        _colorTween = ColorTween(begin: Colors.red, end: Colors.white)
            .animate(_animationController);
      }
    }

    _animationController.forward();
    _animationController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _animationController != null && _colorTween != null
        ? AnimatedBuilder(
            animation: _animationController,
            builder: (context, child) {
              return _buildText(false);
            },
          )
        : _buildText(true);
  }

  Widget _buildText(bool isDefaultColor) {
    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width * 0.6,
          child: AutoSizeText(
            widget.text,
            maxLines: 1,
            style: TextStyle(
                color: !isDefaultColor ? _colorTween.value : Colors.white,
                fontSize: 24.0),
          ),
        ),
//        SizedBox(height: 8.0,),
//        Container(
//          width: MediaQuery.of(context).size.width * 0.8,
//          height: 1.0,
//          color: Colors.white,
//        )
      ],
    );
  }
}
