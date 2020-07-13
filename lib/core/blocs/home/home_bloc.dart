import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState>{
  @override
  HomeState get initialState => HomeState(screenIndex: 0);

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async*{
  }

}