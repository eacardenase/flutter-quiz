import 'package:flutter/material.dart';

import 'package:flutter_quiz/gradient_container.dart';
import 'package:flutter_quiz/home_screen.dart';
import 'package:flutter_quiz/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({
    super.key,
  });

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'home-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = HomeScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = const QuestionsScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          gradientColors: const [
            Colors.indigoAccent,
            Colors.pink,
          ],
          child: screenWidget,
        ),
      ),
    );
  }
}
