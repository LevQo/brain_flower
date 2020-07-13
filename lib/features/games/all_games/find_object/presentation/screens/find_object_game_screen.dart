import 'package:brain_flower/core/resources/colors.dart';
import 'package:brain_flower/core/resources/drawables.dart';
import 'package:brain_flower/core/widgets/custom_app_bar.dart';
import 'package:brain_flower/core/widgets/custom_timer.dart';
import 'package:brain_flower/core/widgets/title_text.dart';
import 'package:brain_flower/core/widgets/white_divider.dart';
import 'package:brain_flower/features/games/all_games/find_object/presentation/blocs/find_object_game_bloc.dart';
import 'package:brain_flower/features/games/all_games/find_object/presentation/blocs/find_object_game_event.dart';
import 'package:brain_flower/features/games/all_games/find_object/presentation/blocs/find_object_game_state.dart';
import 'package:brain_flower/features/games/all_games/find_object/data/models/find_object_model.dart';
import 'package:brain_flower/features/games/all_games/find_object/data/models/find_objects_game_types.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FindObjectGameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<FindObjectGameBloc>(
      create: (context) =>
          FindObjectGameBloc()..add(InitStartScreenFindObject()),
      child: Scaffold(
        backgroundColor: CustomColors.backgroundMoreLessColor,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Drawables.backgroundMoreLess),
                fit: BoxFit.cover),
          ),
          child: BlocBuilder<FindObjectGameBloc, FindObjectGameState>(
            builder: (context, state) {
              if (state is GeneratedObjectsState) {
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
      BuildContext context, GeneratedObjectsState state) {
    return Stack(
      children: <Widget>[
        Positioned(
            right: MediaQuery.of(context).size.width * 0.07,
            left: MediaQuery.of(context).size.width * 0.07,
            top: MediaQuery.of(context).size.height * 0.07,
            child: CustomAppBar(
              score: state.scores.toString(),
            )),
        Positioned(
          right: -MediaQuery.of(context).size.width * 0.07,
          bottom: -MediaQuery.of(context).size.height * 0.08,
          child: CustomTimer(
            isRestart: false,
            finishTimerListener: () {},
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.2,
          right: MediaQuery.of(context).size.width * 0.01,
          left: MediaQuery.of(context).size.width * 0.01,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TitleText(text: 'Найдите объект:', isCorrectAnswer: state.isCorrectAnswer),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    state.typeOfSearch == FindObjectGameTypes.TEXT
                        ? Icons.text_fields
                        : Icons.palette,
                    color: Colors.white,
                    size: 20.0,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('-',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    state.colorText,
                    style: TextStyle(
                        color: state.objectToSearch.color,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Icon(state.objectToSearch.icon, color: Colors.white)
                ],
              ),
              SizedBox(height: 16.0),
              WhiteDivider(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Wrap(
                  runSpacing: MediaQuery.of(context).size.width * 0.05,
                  spacing: MediaQuery.of(context).size.width * 0.05,
                  children: _buildObjects(context, state.objects),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  List<Widget> _buildObjects(
      BuildContext context, List<FindObjectModel> objects) {
    var objectWidgets = <Widget>[];

    objects.forEach((object) {
      var objectWidget = GestureDetector(
        onTap: () => context.bloc<FindObjectGameBloc>().add(
              SelectObjectEvent(
                object: FindObjectModel(object.color, object.icon),
              ),
            ),
        child: Icon(
          object.icon,
          size: MediaQuery.of(context).size.width * 0.15,
          color: object.color,
        ),
      );
      objectWidgets.add(objectWidget);
    });

    return objectWidgets;
  }
}
