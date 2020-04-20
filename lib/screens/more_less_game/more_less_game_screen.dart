import 'package:auto_size_text/auto_size_text.dart';
import 'package:brain_flower/blocs/more_less_game/more_less_game_bloc.dart';
import 'package:brain_flower/blocs/more_less_game/more_less_game_event.dart';
import 'package:brain_flower/blocs/more_less_game/more_less_game_state.dart';
import 'package:brain_flower/data/more_less_game/answer_types_more_less.dart';
import 'package:brain_flower/resources/colors.dart';
import 'package:brain_flower/resources/drawables.dart';
import 'package:brain_flower/widgets/custom_app_bar.dart';
import 'package:brain_flower/widgets/custom_timer.dart';
import 'package:brain_flower/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoreLessGameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<MoreLessGameBloc>(
      create: (context) => MoreLessGameBloc()..add(InitStartScreenMoreLess()),
      child: Scaffold(
        backgroundColor: CustomColors.backgroundMoreLessColor,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(Drawables.backgroundMoreLess),
            fit: BoxFit.cover,
          )),
          child: BlocBuilder<MoreLessGameBloc, MoreLessGameState>(
            builder: (context, state) {
              if (state is GeneratedNumbersMoreLessState) {
                return _buildMainContainer(state, context);
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
      GeneratedNumbersMoreLessState state, BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
//        CustomAppBar(),
        Positioned(
          right: MediaQuery.of(context).size.width * 0.07,
          left: MediaQuery.of(context).size.width * 0.07,
          top: MediaQuery.of(context).size.height * 0.07,
          child: CustomAppBar(score: state.score.toString(),)
        ),
        Positioned(
          right: -MediaQuery.of(context).size.width * 0.07,
          bottom: -MediaQuery.of(context).size.height * 0.08,
          child: CustomTimer(
            isRestart: state.isCorrectAnswer != null ? false : true,
            finishTimerListener: () => _showDialog(
              context,
              state.score,
            ),
          ),
        ),
        FractionallySizedBox(
          alignment: Alignment.center,
          widthFactor: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TitleText(
                text: 'Какое число больше?',
                isCorrectAnswer: state.isCorrectAnswer,
              ),
              SizedBox(height: 30.0),
              NumberContainerMoreLess(
                text: state.firstNumber,
                type: AnswerTypesMoreLess.firstNumber,
              ),
              SizedBox(height: 20.0),
              NumberContainerMoreLess(
                text: state.secondNumber,
                type: AnswerTypesMoreLess.secondNumber,
              ),
              SizedBox(height: 20.0),
              NumberContainerMoreLess(
                text: '=',
                type: AnswerTypesMoreLess.equal,
              ),
            ],
          ),
        ),
      ],
    );
  }

  _showDialog(BuildContext buildContext, int score) {
    showDialog(
        context: buildContext,
        builder: (context) {
          return AlertDialog(
            title: new Text("Я ебал такое палево"),
            content: new Text("У ты буря ебаная, ты набрал $score очков"),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog
              new FlatButton(
                child: new Text("Повторить"),
                onPressed: () {
                  buildContext.bloc<MoreLessGameBloc>().add(InitStartScreenMoreLess());
                  Navigator.of(context).pop();
                },
              ),
              new FlatButton(
                child: new Text("Закрыть"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }
}

class NumberContainerMoreLess extends StatelessWidget {
  final String text;
  final AnswerTypesMoreLess type;

  const NumberContainerMoreLess({@required this.text, @required this.type});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context
            .bloc<MoreLessGameBloc>()
            .add(SelectAnswerMoreLessEvent(answerType: type));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: CustomColors.buttonMoreLessColor,
            boxShadow: [
              BoxShadow(
                  color: CustomColors.defaultShadowColor,
                  offset: Offset(0.0, 4.0),
                  blurRadius: 10.0)
            ]),
        width: MediaQuery.of(context).size.width * 0.65,
        height: MediaQuery.of(context).size.height * 0.1,
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 30.0, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
