import 'package:flutter_bloc/flutter_bloc.dart';

import 'header_animation_state.dart';

class HeaderAnimationBloc extends Bloc<bool, HeaderAnimationState>{
  @override
  HeaderAnimationState get initialState => HeaderAnimationState(isPaused: true);

  @override
  Stream<HeaderAnimationState> mapEventToState(bool event) async* {
    yield HeaderAnimationState(isPaused: event);
  }
}