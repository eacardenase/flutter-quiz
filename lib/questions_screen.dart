import 'package:flutter/material.dart';
import 'package:flutter_quiz/answer_button.dart';

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'The question...',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        AnswerButton(
          answerText: 'Answer 1',
          onTap: () {},
        ),
        AnswerButton(
          answerText: 'Answer 2',
          onTap: () {},
        ),
        AnswerButton(
          answerText: 'Answer 3',
          onTap: () {},
        ),
        AnswerButton(
          answerText: 'Answer 4',
          onTap: () {},
        ),
      ],
    );
  }
}
