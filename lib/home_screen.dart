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
          width: 300,
          color: const Color.fromARGB(140, 255, 255, 255),
        ),
        const SizedBox(
          height: 80,
        ),
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        const SizedBox(
          height: 35,
        ),
        OutlinedButton.icon(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            side: const BorderSide(
              width: 1.8,
              color: Colors.white,
              strokeAlign: 6,
            ),
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text(
            'Start Quiz',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        )
      ],
    );
  }
}
