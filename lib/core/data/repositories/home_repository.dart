import 'package:brain_flower/core/resources/themes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeRepository {
  static const String kThemeModeKey = "THEME_MODE_KEY";

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future saveThemeMode(AppTheme theme) async {
    _prefs.then((SharedPreferences prefs) {
      prefs.setInt(kThemeModeKey, theme.index);
    });
  }

  Future<AppTheme> getCurrentThemeMode() async {
    AppTheme appTheme = AppTheme.LightTheme;
    await _prefs.then((SharedPreferences prefs) {
      int themeIndex = prefs.getInt(kThemeModeKey);
      appTheme = AppTheme.values[themeIndex];
    });
    return appTheme;
  }
}
