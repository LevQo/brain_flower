import 'package:brain_flower/core/blocs/home/home_bloc.dart';
import 'package:brain_flower/core/blocs/home/home_event.dart';
import 'package:brain_flower/core/blocs/home/home_state.dart';
import 'package:brain_flower/core/resources/colors.dart';
import 'package:brain_flower/core/utils/extensions.dart';
import 'package:brain_flower/features/games/presentation/screens/games_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../features/settings/presentation/screens/settings_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return _buildHomeScaffold(context, state.screenIndex);
        },
      ),
    );
  }

  Widget _buildHomeScaffold(BuildContext context, int screenIndex) {
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
        backgroundColor: context.isLightThemeMode ? Colors.white : CustomColors.backgroundGameDarkColor,
        unselectedItemColor: Colors.grey,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.videogame_asset),
            title: Text('Игры'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('...'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.build),
            title: Text('...'),
          ),
        ],
      ),
    );
  }
}
