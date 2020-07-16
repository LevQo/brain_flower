import 'package:brain_flower/core/resources/colors.dart';
import 'package:brain_flower/features/games/all_games/more_less/data/models/answer_types_more_less.dart';
import 'package:brain_flower/core/utils/extensions.dart';
import 'package:flutter/material.dart';

class NumberContainerMoreLess extends StatelessWidget {
  final String text;
  final AnswerTypesMoreLess type;
  final Function onTap;

  const NumberContainerMoreLess({@required this.text, @required this.type, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: CustomColors.buttonMoreLessColor,
            boxShadow: [
              BoxShadow(color: CustomColors.defaultShadowColor, offset: Offset(0.0, 4.0), blurRadius: 10.0)
            ]),
        width: context.screenWidth * 0.65,
        height: context.screenHeight * 0.1,
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
