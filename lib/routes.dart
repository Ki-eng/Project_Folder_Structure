import 'package:flutter/material.dart';
import 'UI/screens/resultScreen.dart';
import 'core/model/quiz.dart';
import 'UI/screens/aboutScreen.dart';
import 'UI/screens/myApp.dart';

class customRoute {
  static GenerateRoute(RouteSettings) {
    switch (RouteSettings.name) {
      case Resultscreen.routeName:
        final arg = RouteSettings.arguments as Quiz;
        return MaterialPageRoute(
          builder: (context) => Resultscreen(
            score: arg.score,
            totalAttempted: arg.totalAttempted,
          ),
        );

      case Aboutscreen.routeName:
        return MaterialPageRoute(builder: (context) => Aboutscreen());

      //case GuessCountry.routeName:
      default:
        return MaterialPageRoute(builder: (context) => GuessCountry());
    }
  }
}
