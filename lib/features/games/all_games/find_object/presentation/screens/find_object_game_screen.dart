import 'package:brain_flower/core/resources/colors.dart';
import 'package:brain_flower/core/resources/drawables.dart';
import 'package:brain_flower/core/routes/router.gr.dart';
import 'package:brain_flower/core/utils/extensions.dart';
import 'package:brain_flower/core/widgets/title_text.dart';
import 'package:brain_flower/core/widgets/white_divider.dart';
import 'package:brain_flower/features/games/all_games/find_object/data/models/find_object_model.dart';
import 'package:brain_flower/features/games/all_games/find_object/data/models/find_objects_game_types.dart';
import 'package:brain_flower/features/games/all_games/find_object/presentation/blocs/find_object_game_bloc.dart';
import 'package:brain_flower/features/games/all_games/find_object/presentation/blocs/find_object_game_event.dart';
import 'package:brain_flower/features/games/all_games/find_object/presentation/blocs/find_object_game_state.dart';
import 'package:brain_flower/features/games/presentation/widgets/game_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// TODO: refactoring
class FindObjectGameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<FindObjectGameBloc>(
      create: (context) => FindObjectGameBloc()..add(FindObjectGameEvent.initStartScreen()),
      child: Scaffold(
        backgroundColor: context.isLightThemeMode
            ? CustomColors.backgroundGameLightColor
            : CustomColors.backgroundGameDarkColor,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(context.isLightThemeMode
                    ? Drawables.gamesBackgroundLight
                    : Drawables.gamesBackgroundDark),
                fit: BoxFit.cover),
          ),
          child: BlocBuilder<FindObjectGameBloc, FindObjectGameState>(
            builder: (context, state) {
              if (state is GeneratedObjects) {
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

  Widget _buildMainContainer(BuildContext context, GeneratedObjects state) {
    final color = context.isLightThemeMode ? CustomColors.defaultTextColor : Colors.white;
    return GameContainer(
      scores: state.scores,
      isCorrectAnswer: state.isCorrectAnswer,
      routeName: Routes.findObjectGame,
      gameContent: Positioned(
        top: context.screenHeight * 0.2,
        right: context.screenWidth * 0.01,
        left: context.screenWidth * 0.01,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TitleText(text: 'Найдите объект:', isCorrectAnswer: state.isCorrectAnswer),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(state.typeOfSearch == FindObjectGameTypes.TEXT ? Icons.text_fields : Icons.palette,
                    color: color, size: 20.0),
                SizedBox(width: 10.0),
                Text('-', style: TextStyle(color: color, fontSize: 24.0, fontWeight: FontWeight.bold)),
                SizedBox(width: 10.0),
                Text(
                  state.colorText,
                  style: TextStyle(
                      color: state.objectToSearch.color, fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 4.0),
                Icon(state.objectToSearch.icon, color: color)
              ],
            ),
            SizedBox(height: 16.0),
            GameDivider(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Wrap(
                runSpacing: context.screenWidth * 0.05,
                spacing: context.screenWidth * 0.05,
                children: _buildObjects(context, state.objects),
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> _buildObjects(BuildContext context, List<FindObjectModel> objects) {
    var objectWidgets = <Widget>[];
    objects.forEach((object) {
      var objectWidget = GestureDetector(
        onTap: () => context.bloc<FindObjectGameBloc>().add(
              FindObjectGameEvent.selectObject(
                object: FindObjectModel(color: object.color, icon: object.icon),
              ),
            ),
        child: Icon(
          object.icon,
          size: context.screenWidth * 0.10,
          color: object.color,
        ),
      );
      objectWidgets.add(objectWidget);
    });
    return objectWidgets;
  }
}
