import 'package:brain_flower/core/resources/themes.dart';

abstract class HomeEvent{
  const HomeEvent();
}

class SelectScreenEvent implements HomeEvent{
  final int screenIndex;

  const SelectScreenEvent(this.screenIndex): assert(screenIndex != null);
}

class SelectThemeModeEvent implements HomeEvent{
  final AppTheme theme;

  const SelectThemeModeEvent(this.theme);
}