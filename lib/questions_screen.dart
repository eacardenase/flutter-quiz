import 'package:flutter/material.dart';

import 'package:flutter_quiz/answer_button.dart';
import 'package:flutter_quiz/data/quiz_questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({
    super.key,
  });

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          currentQuestion.text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        ...currentQuestion.answers.map(
          (answer) {
            return AnswerButton(
              answerText: answer,
              onTap: () {},
            );
          },
        ),
      ],
    );
  }
}
