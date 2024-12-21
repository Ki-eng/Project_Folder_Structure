import 'package:flutter/material.dart';
import 'package:folder_structure/constants/appStrings.dart';
import '../widgets/customButton.dart';
import '../widgets/customCard.dart';

class Aboutscreen extends StatelessWidget {
  static const routeName = Appstrings.aboutScreenRoute;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(Appstrings.aboutScreenTitle),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Customcard(
            height: 200,
            elevation: 10,
            shadowColor: Colors.grey,
            headingWidget: Text(
              Appstrings.aboutScreenText,
              style: theme.textTheme.headlineMedium,
            ),
          ),
          CustomButton(
            onPress: () => Navigator.pop(context),
            title: Appstrings.goBack,
            backgroundColor: Colors.indigo,
          )
        ],
      ),
    );
  }
}
