import 'package:folder_structure/constants/appStrings.dart';
import '../../core/model/resetQuizStatus.dart';
import '../widgets/customButton.dart';
import '../widgets/customCard.dart';
import 'package:flutter/material.dart';
import '../../core/data/countries.dart';
import '../../core/model/quiz.dart';
import '../../utils/utils.dart';
import '../widgets/scoreCard.dart';

class GuessCountry extends StatefulWidget {
  @override
  State<GuessCountry> createState() => _GuessCountryState();
}

class _GuessCountryState extends State<GuessCountry> {
  Quiz quizScoreCard = Quiz();
  bool showAnswer = false;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Appstrings.guessCountryScreenTitle,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: resetQuiz,
        child: Text(
          Appstrings.reset,
          style: TextStyle(color: Colors.white),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, Appstrings.aboutScreenRoute),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Text(
                    Appstrings.aboutUs,
                    style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ]),
              ),
            ),
            Scorecard(
              score: quizScoreCard.score,
              totalAttempted: quizScoreCard.totalAttempted,
            ),
            Customcard(
              onPress: handleShowAnswer,
              elevation: 10,
              height: 200,
              shadowColor: Colors.grey,
              headingWidget: Text(
                showAnswer ? Appstrings.Capital : Appstrings.Country,
                style: theme.textTheme.headlineSmall,
              ),
              bodyWidget: Text(
                showAnswer
                    ? countries[quizScoreCard.totalAttempted]
                        [Appstrings.capital]!
                    : countries[quizScoreCard.totalAttempted][Appstrings.name]!,
                style: theme.textTheme.headlineMedium,
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomButton(
                onPress: () {
                  Navigator.pushNamed(context, Appstrings.resultScreenRoute,
                          arguments: quizScoreCard)
                      .then((value) {
                    final statusValue = value as Resetquizstatus;
                    if (statusValue.status == Appstrings.reset) {
                      resetQuiz();
                    }
                  });
                },
                title: Appstrings.showResult,
                backgroundColor: Colors.indigo,
              )
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(
                  onPress: markAnswerCorrect,
                  title: Appstrings.correct,
                  backgroundColor: Colors.green,
                ),
                CustomButton(
                  onPress: markAnswerWrong,
                  title: Appstrings.incorrect,
                  backgroundColor: Colors.red,
                )
              ],
            )
          ]),
    );
  }

  void handleShowAnswer() {
    setState(() {
      showAnswer = !showAnswer;
    });
  }

  void markAnswerWrong() {
    setState(() {
      if (quizScoreCard.totalAttempted < countries.length - 1) {
        quizScoreCard.wrongAnswer();
      } else {
        showEndOfListAlert(context);
      }
    });
  }

  void markAnswerCorrect() {
    setState(() {
      if (quizScoreCard.totalAttempted < countries.length - 1) {
        quizScoreCard.correctAnswer();
      } else {
        showEndOfListAlert(context);
      }
    });
  }

  void resetQuiz() {
    setState(() {
      quizScoreCard.resetQuiz();
    });
  }
}
