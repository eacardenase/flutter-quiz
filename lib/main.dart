import 'package:flutter/material.dart';
import 'package:flutter_quiz/home_screen.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        color: Colors.deepPurple,
        child: const Center(
          child: HomeScreen(),
        ),
      ),
    ),
  ));
}
