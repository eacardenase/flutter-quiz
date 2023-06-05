import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.startQuizHandler, {super.key});

  final void Function()? startQuizHandler;

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
        Text(
          'Learn Flutter the fun way!',
          style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 35,
        ),
        OutlinedButton.icon(
          onPressed: startQuizHandler,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            side: const BorderSide(
              width: 1.8,
              color: Colors.white,
              strokeAlign: 4,
            ),
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: Text(
            'Start Quiz',
            style: GoogleFonts.lato(
              fontSize: 20,
            ),
          ),
        )
      ],
    );
  }
}
