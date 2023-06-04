import 'package:flutter/material.dart';
import 'package:flutter_quiz/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(
        gradientColors: [
          Colors.indigoAccent,
          Colors.pink,
        ],
      ),
    ),
  ));
}
