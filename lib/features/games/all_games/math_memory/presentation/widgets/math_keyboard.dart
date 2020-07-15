import 'package:flutter/material.dart';
import 'package:brain_flower/core/utils/extensions.dart';

class MathKeyboard extends StatelessWidget {
  final int correctNumber;
  final Function(int number) onKeyTap;

  const MathKeyboard({@required this.correctNumber, @required this.onKeyTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: context.screenWidth * 0.2, vertical: 20.0),
          child: Wrap(
            runAlignment: WrapAlignment.center,
            spacing: context.screenWidth * 0.04,
            runSpacing: context.screenWidth * 0.04,
            children: _buildButtons(context),
          ),
        )
      ],
    );
  }

  List<Widget> _buildButtons(BuildContext context) {
    var buttons = <Widget>[];
    for (int i = 1; i <= 9; i++) {
      buttons.add(MathKeyButton(
        number: i,
        isCorrect: i == correctNumber,
        onKeyTap: onKeyTap,
      ));
    }
    return buttons;
  }
}

class MathKeyButton extends StatefulWidget {
  final int number;
  final bool isCorrect;
  final Function(int number) onKeyTap;

  const MathKeyButton({@required this.number, @required this.onKeyTap, this.isCorrect = false});

  @override
  _MathKeyButtonState createState() => _MathKeyButtonState();
}

class _MathKeyButtonState extends State<MathKeyButton> with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation _colorTween;

  @override
  void initState() {
    _initAnimation();
    super.initState();
  }

  @override
  void didUpdateWidget(MathKeyButton oldWidget) {
    _initAnimation();
    super.didUpdateWidget(oldWidget);
  }

  void _initAnimation() {
    if (widget.isCorrect) {
      _animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 500));
      _colorTween = ColorTween(begin: Colors.green, end: Colors.white).animate(_animationController);
      _animationController.forward();

      _animationController.addListener(() {
        setState(() {}); //TODO REMOVE SET STATE
      });
    }
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.onKeyTap(widget.number),
      child: ColorFiltered(
        colorFilter:
            ColorFilter.mode(widget.isCorrect ? _colorTween.value : Colors.white, BlendMode.modulate),
        child: Container(
          height: context.screenWidth * 0.10,
          width: context.screenWidth * 0.14,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            border: Border.all(color: Colors.white),
          ),
          child: Center(
            child: Text(
              widget.number.toString(),
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
        ),
      ),
    );
  }
}
