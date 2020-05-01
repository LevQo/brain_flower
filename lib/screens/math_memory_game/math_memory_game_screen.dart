import 'package:brain_flower/resources/colors.dart';
import 'package:brain_flower/resources/drawables.dart';
import 'package:flutter/material.dart';
import 'package:brain_flower/utils/extensions.dart';

class MathMemoryGameScreen extends StatefulWidget {
  @override
  _MathMemoryGameScreenState createState() => _MathMemoryGameScreenState();
}

class _MathMemoryGameScreenState extends State<MathMemoryGameScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _translateAnimation;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animationController.forward();

    _translateAnimation = Tween(begin: 0.0, end: 300.0)
      .animate(CurvedAnimation(
          parent: _animationController, curve: Curves.bounceOut));

    super.initState();
  }

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
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            fit: StackFit.expand,
            children: <Widget>[
              Positioned(
                top: 0,
                child: AnimatedBuilder(
                  animation: _animationController,
                  builder: (context, child) => Transform.translate(
                    offset: Offset(0.0, _translateAnimation.value),
                    child: Container(
                      height: context.screenHeight * 0.15,
                      width: context.screenWidth * 0.3,
                      decoration: BoxDecoration(
                          color: Color(0xFF591DBC),
                          borderRadius: BorderRadius.circular(20.0)),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: context.screenHeight * 0.2,
                child: AnimatedBuilder(
                  animation: _animationController,
                  builder: (context, child) => Transform.translate(
                    offset: Offset(0.0, _translateAnimation.value),
                    child: Container(
                      height: context.screenHeight * 0.15,
                      width: context.screenWidth * 0.3,
                      decoration: BoxDecoration(
                          color: Color(0xFF591DBC),
                          borderRadius: BorderRadius.circular(20.0)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
