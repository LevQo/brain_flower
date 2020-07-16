import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/resources/themes.dart';
import 'core/routes/router.gr.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Brain Flower',
      theme: appThemeData[AppTheme.LightTheme],
      darkTheme: appThemeData[AppTheme.DarkTheme],
      builder: ExtendedNavigator<Router>(router: Router()),
    );
  }
}
