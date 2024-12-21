import 'package:flutter/material.dart';
import 'package:folder_structure/constants/appStrings.dart';
import '../../core/model/resetQuizStatus.dart';
import '../widgets/customCard.dart';
import '../widgets/customButton.dart';

class Resultscreen extends StatelessWidget {
  static const routeName = Appstrings.resultScreenRoute;
  Resultscreen({this.score = 0, this.totalAttempted = 0});

  final int score;
  final int totalAttempted;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(Appstrings.resultScreenTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Customcard(
              elevation: 10,
              shadowColor: Colors.grey,
              height: 200,
              headingWidget: Text(
                Appstrings.quizEnded,
                style: theme.textTheme.headlineMedium,
              ),
              bodyWidget: Text(
                'Score $score/$totalAttempted',
                style: theme.textTheme.headlineMedium,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  onPress: () => Navigator.pop(
                    context,
                    Resetquizstatus(status: Appstrings.reset),
                  ),
                  title: Appstrings.restart,
                  backgroundColor: Colors.indigo,
                ),
              ],
            ),
          ],
        ),
      ),
    );
    ;
  }
}
