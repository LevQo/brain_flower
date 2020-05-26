import 'package:brain_flower/blocs/home_screen/home_bloc.dart';
import 'package:brain_flower/blocs/home_screen/home_event.dart';
import 'package:brain_flower/blocs/home_screen/home_state.dart';
import 'package:brain_flower/resources/colors.dart';
import 'package:brain_flower/resources/routes.dart';
import 'package:brain_flower/resources/themes.dart';
import 'package:brain_flower/screens/dominoes_game/dominoes_game_screen.dart';
import 'package:brain_flower/screens/find_number_game/find_number_game_screen.dart';
import 'package:brain_flower/screens/find_object_game/find_object_game_screen.dart';
import 'package:brain_flower/screens/games_screen/games_screen.dart';
import 'package:brain_flower/screens/math_memory_game/math_memory_game_screen.dart';
import 'package:brain_flower/screens/more_less_game/more_less_game_screen.dart';
import 'package:brain_flower/screens/ufo_shapes_game/ufo_shapes_game_screen.dart';
import 'package:brain_flower/screens/watering_flowers_game/watering_flowers_game_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:brain_flower/utils/extensions.dart';

import '../settings_screen/settings_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Brain Flower',
            theme: appThemeData[AppTheme.LightTheme],
            darkTheme: appThemeData[AppTheme.DarkTheme],
            routes: {
              Routes.homeScreen: (context) => HomeScreen(),
              Routes.gamesScreen: (context) => GamesScreen(),
              Routes.settingsScreen: (context) => SettingsScreen(),
              Routes.moreLessGame: (context) => MoreLessGameScreen(),
              Routes.findNumberGame: (context) => FindNumberGameScreen(),
              Routes.dominoesGame: (context) => DominoesGameScreen(),
              Routes.findObjectGame: (context) => FindObjectGameScreen(),
              Routes.wateringFlowers: (context) => WateringFlowersGameScreen(),
              Routes.mathMemoryGame: (context) => MathMemoryGameScreen(),
              Routes.ufoShapesGame: (context) => UfoShapesGameScreen(),
            },
            home: _buildHomeScaffold(context, state.screenIndex),
          );
        },
      ),
    );
  }

  Widget _buildHomeScaffold(BuildContext context, int screenIndex){
    return Scaffold(
      backgroundColor: CustomColors.greenLayerBackgroundColor,
      body: IndexedStack(
        index: screenIndex,
        children: <Widget>[GamesScreen(), SettingsScreen()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          if (index != 2) context.bloc<HomeBloc>().add(SelectScreenEvent(index));
        },
        currentIndex: screenIndex,
        backgroundColor: context.isLightThemeMode
            ? Colors.white
            : CustomColors.backgroundGameDarkColor,
        unselectedItemColor: Colors.grey,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.videogame_asset),
            title: Text('Игры'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Настройки'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.build),
            title: Text('Скоро'),
          ),
        ],
      ),
    );
  }
}
