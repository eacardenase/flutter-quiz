import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 250,
        ),
        const SizedBox(
          height: 60,
        ),
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Start quiz',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        )
      ],
    );
  }
}
