import 'package:brain_flower/data/home/nav_bar_items.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<int, int>{

  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(int event) async* {
    yield event;
  }

}