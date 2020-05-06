import 'package:brain_flower/blocs/math_memory_game/math_memory_game_bloc.dart';
import 'package:brain_flower/blocs/math_memory_game/math_memory_game_event.dart';
import 'package:brain_flower/blocs/math_memory_game/math_memory_game_state.dart';
import 'package:brain_flower/resources/colors.dart';
import 'package:brain_flower/resources/drawables.dart';
import 'package:brain_flower/widgets/custom_app_bar.dart';
import 'package:brain_flower/widgets/custom_timer.dart';
import 'package:brain_flower/widgets/title_text.dart';
import 'package:brain_flower/widgets/white_divider.dart';
import 'package:flutter/material.dart';
import 'package:brain_flower/utils/extensions.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MathMemoryGameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<MathMemoryGameBloc>(
      create: (context) =>
          MathMemoryGameBloc()..add(InitStartScreenMathMemory()),
      child: Scaffold(
        backgroundColor: CustomColors.primaryDarkBackgroundColor,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Drawables.backgroundMoreLess),
                fit: BoxFit.cover),
          ),
          child: BlocBuilder<MathMemoryGameBloc, MathMemoryGameState>(
            builder: (context, state) {
              if (state is GeneratedMathCardsState) {
                return _buildMainContainer(context, state);
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
      BuildContext context, GeneratedMathCardsState state) {
    return Stack(
      children: <Widget>[
        Positioned(
          right: context.screenWidth * 0.07,
          left: context.screenWidth * 0.07,
          top: context.screenHeight * 0.07,
          child: CustomAppBar(
            score: state.scores.toString(),
          ),
        ),
        Positioned(
          right: -context.screenWidth * 0.07,
          bottom: -context.screenHeight * 0.08,
          child: CustomTimer(
            isRestart: false,
            finishTimerListener: () {},
          ),
        ),
        Positioned(
          top: context.screenHeight * 0.13,
          right: context.screenWidth * 0.01,
          left: context.screenWidth * 0.01,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20.0),
              Transform.scale(
                  scale: 0.7,
                  child: MathMemoryCard(
                    number: state.nextNumber.number,
                    isNeedToRemember: state.nextNumber.isNeedToRemember,
                    isMemorizedNumber: state.nextNumber.isMemorizedNumber,
                  )),
              SizedBox(height: 20.0),
              MathMemoryCard(
                number: state.currentNumber.number,
                isNeedToRemember: state.currentNumber.isNeedToRemember,
                isMemorizedNumber: state.currentNumber.isMemorizedNumber,
              ),
              SizedBox(height: 20.0),
              WhiteDivider(),
              MathKeyboard(correctNumber: state.correctNumber)
            ],
          ),
        ),
      ],
    );
  }
}

class MathMemoryCard extends StatelessWidget {
  final String number;
  final bool isNeedToRemember;
  final bool isMemorizedNumber;

  const MathMemoryCard(
      {@required this.number, this.isNeedToRemember, this.isMemorizedNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight * 0.12,
      width: context.screenHeight * 0.14,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
                offset: Offset(0.0, 6.0),
                color: CustomColors.defaultShadowColor)
          ],
          color: CustomColors.cardMathMemoryColor),
      child: Stack(
        children: isMemorizedNumber
            ? _buildMemorizedNumberCard()
            : _buildDefaultCard(),
      ),
    );
  }

  List<Widget> _buildDefaultCard() {
    return [
      Align(
        alignment: Alignment.center,
        child: Text(
          number,
          style: TextStyle(fontSize: 32, color: Colors.white),
        ),
      ),
      Positioned(
        right: 2.0,
        top: 2.0,
        child: isNeedToRemember
            ? Icon(
                Icons.bubble_chart,
                color: Colors.white,
              )
            : Container(),
      ),
    ];
  }

  List<Widget> _buildMemorizedNumberCard() {
    return [
      Align(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              number,
              style: TextStyle(fontSize: 32, color: Colors.white),
            ),
            Icon(
              Icons.bubble_chart,
              color: Colors.white,
            ),
          ],
        ),
      ),
    ];
  }
}

class MathKeyboard extends StatelessWidget {
  final int correctNumber;

  const MathKeyboard({this.correctNumber});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: context.screenWidth * 0.2, vertical: 20.0),
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
      ));
    }
    return buttons;
  }
}

class MathKeyButton extends StatefulWidget {
  final int number;
  final bool isCorrect;

  const MathKeyButton({@required this.number, this.isCorrect = false});

  @override
  _MathKeyButtonState createState() => _MathKeyButtonState();
}

class _MathKeyButtonState extends State<MathKeyButton>
    with TickerProviderStateMixin {
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
      _animationController = AnimationController(
          vsync: this, duration: Duration(milliseconds: 500));
      _colorTween = ColorTween(begin: Colors.green, end: Colors.white)
          .animate(_animationController);
      _animationController.forward();

      _animationController.addListener(() {
        setState(() {}); //TODO REMOVE SET STATE
      });
    }
  }

  @override
  void dispose() {
    if(_animationController != null){
      _animationController.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context
            .bloc<MathMemoryGameBloc>()
            .add(ToAnswerMathMemoryEvent(number: widget.number));
      },
      child: ColorFiltered(
        colorFilter: ColorFilter.mode(
            widget.isCorrect ? _colorTween.value : Colors.white,
            BlendMode.modulate),
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
