import 'package:brain_flower/blocs/home/home_bloc.dart';
import 'package:brain_flower/resources/colors.dart';
import 'package:brain_flower/screens/games_screen/games_screen.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../settings_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(),
      child: BlocBuilder<HomeBloc, int>(
        builder: (context, screenIndex){
          return Scaffold(
            backgroundColor: CustomColors.kGreenLayerBackgroundColor,
            body: _buildScaffoldBody(screenIndex),
            bottomNavigationBar: BottomNavigationBar(
              onTap: (index) => context.bloc<HomeBloc>().add(index),
              currentIndex: screenIndex,
              backgroundColor: CustomColors.kPrimaryDarkColor,
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
        },
      ),
    );
  }

  Widget _buildScaffoldBody(int index){
    Widget scaffoldBody;
    switch(index) {
      case 0:
        scaffoldBody = GamesScreen();
        break;
      case 1:
        scaffoldBody = SettingsScreen();
        break;
      default:
        scaffoldBody = GamesScreen();
    }
    return scaffoldBody;
  }
}
