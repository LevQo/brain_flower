import 'package:brain_flower/core/resources/colors.dart';
import 'package:brain_flower/core/utils/extensions.dart';
import 'package:flutter/material.dart';

class GameCard extends StatefulWidget {
  final String route;
  final String imageUri;

  const GameCard({this.route, @required this.imageUri}) : assert(imageUri != null);

  @override
  _GameCardState createState() => _GameCardState();
}

class _GameCardState extends State<GameCard> with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _tapAnimation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );
    _tapAnimation = Tween(begin: 1.0, end: 0.9).animate(_animationController);
    super.initState();
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) => _animationController.forward(),
      onTapCancel: () => _animationController.reverse(),
      onTap: () {
        _animationController.reverse();
        Navigator.pushNamed(context, widget.route);
      },
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Transform.scale(
            scale: _tapAnimation.value,
            child: Container(
              width: context.screenWidth * 0.41,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.shadowDarkColor,
                    blurRadius: 5.0,
                  )
                ],
              ),
              child: Image.asset(
                widget.imageUri,
                fit: BoxFit.fitWidth,
              ),
            ),
          );
        },
      ),
    );
  }
}
