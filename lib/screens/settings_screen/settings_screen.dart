import 'package:flutter/material.dart';
import 'package:brain_flower/utils/extensions.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  final containerKey = GlobalKey();
  Rect get containerRect => containerKey.globalPaintBounds;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: Duration(seconds: 2));
    _animationController.forward();
    _animationController.addListener(() {
//      print(containerRect.center);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(containerRect?.center ?? '123');
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0.0, _animationController.value * context.screenHeight * 0.5 - 100),
          child: Container(
            key: containerKey,
            height: 100,
            width: 100,
            color: Colors.pink,
          ),
        );
      },
    );
  }
}
