import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_quiz/quiz.dart';

void main() {
  runApp(const Quiz());

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor:
          Colors.white, // does not affect status bar color
      statusBarColor: Colors.white, // does not affect status bar color
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
}
