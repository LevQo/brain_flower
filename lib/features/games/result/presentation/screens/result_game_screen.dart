import 'package:auto_size_text/auto_size_text.dart';
import 'package:brain_flower/core/resources/colors.dart';
import 'package:brain_flower/core/resources/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:brain_flower/core/utils/extensions.dart';

class ResultGameScreen extends StatelessWidget {
  final int scores;

  const ResultGameScreen({this.scores = 0});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.isLightThemeMode
          ? CustomColors.backgroundGameLightColor
          : CustomColors.backgroundGameDarkColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
            vertical: context.screenHeight * 0.06, horizontal: context.screenHeight * 0.04),
        physics: BouncingScrollPhysics(),
        child: Container(
          height: context.screenHeight * 0.9,
          width: context.screenWidth * 0.9,
          decoration: BoxDecoration(
              color: CustomColors.backgroundLightColor,
              borderRadius: BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  blurRadius: 6.0,
                  color: CustomColors.defaultShadowColor,
                  offset: Offset(0.0, 6.0),
                )
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AutoSizeText(
                'Результат',
                style: CustomTextStyle.defaultText(context).copyWith(fontSize: 30.0),
                maxLines: 1,
                maxFontSize: 30.0,
              ),
              AutoSizeText(
                '12312',
                style: CustomTextStyle.defaultText(context)
                    .copyWith(fontSize: 40.0, fontWeight: FontWeight.bold),
                maxLines: 1,
                maxFontSize: 40.0,
              ),
              SizedBox(height: context.screenHeight * 0.4),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: context.screenWidth * 0.15),
                child: Container(
                  height: context.screenHeight * 0.1,
                  decoration: BoxDecoration(
                      color: CustomColors.greenLayerBackgroundColor,
                      borderRadius: BorderRadius.circular(30.0),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 6.0,
                          color: CustomColors.defaultShadowColor,
                          offset: Offset(0.0, 6.0),
                        )
                      ]),
                  child: Center(
                    child: Text(
                      'ПЕРЕИГРАТЬ',
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: context.screenHeight * 0.03),
              Text(
                'Выйти',
                style: CustomTextStyle.defaultText(context).copyWith(decoration: TextDecoration.underline),
              )
            ],
          ),
        ),
      ),
    );
  }
}
