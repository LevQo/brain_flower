import 'package:brain_flower/resources/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mockito/mockito.dart';

import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState>{
  @override
  HomeState get initialState => HomeState(screenIndex: 0);

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async*{
  }

}