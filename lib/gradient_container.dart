import 'package:flutter/material.dart';

import 'package:flutter_quiz/home_screen.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.gradientColors});

  GradientContainer.defaultColors({super.key})
      : gradientColors = [
          Colors.indigo,
          Colors.pink,
        ];

  final List<Color> gradientColors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: HomeScreen(),
      ),
    );
  }
}
