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
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = HomeScreen(switchScreen);

    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          gradientColors: const [
            Colors.indigoAccent,
            Colors.pink,
          ],
          child: activeScreen,
        ),
      ),
    );
  }
}
