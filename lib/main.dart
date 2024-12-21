import 'package:flutter/material.dart';
import 'package:folder_structure/constants/appStrings.dart';
import 'utils/themes.dart';
import 'routes.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) => customRoute.GenerateRoute(settings),
      initialRoute: Appstrings.guessCountryRouteName,
      theme: AppTheme.appThemem,
    );
  }
}
