import 'package:auto_size_text/auto_size_text.dart';
import 'package:brain_flower/core/resources/colors.dart';
import 'package:brain_flower/core/utils/extensions.dart';
import 'package:flutter/material.dart';

class CustomTimer extends StatefulWidget {
  final Function onFinish;

  const CustomTimer({this.onFinish});

  @override
  _CustomTimerState createState() => _CustomTimerState();
}

class _CustomTimerState extends State<CustomTimer> with TickerProviderStateMixin {
  AnimationController _controller;

  String get timerString {
    Duration duration = _controller.duration * _controller.value;
    return '${duration.inSeconds}';
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 60),
    )..addStatusListener((status) {
        if (status == AnimationStatus.dismissed) widget.onFinish();
      });

    _controller.reverse(from: _controller.value == 0.0 ? 1.0 : _controller.value);
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight * 0.45,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) => AutoSizeText(
          timerString,
          maxLines: 1,
          style: TextStyle(
              color: context.isLightThemeMode ? CustomColors.timerLightColor : CustomColors.timerDarkColor,
              fontSize: 295.0,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
