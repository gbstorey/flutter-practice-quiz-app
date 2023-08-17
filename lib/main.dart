import 'package:flutter/material.dart';
import 'package:advanced_basics/quiz.dart';

const lightColor = Color.fromRGBO(47, 0, 117, 1.0);
const darkerColor = Color.fromRGBO(106, 2, 154, 1.0);
const colors = [lightColor, darkerColor];

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

void main() {
  runApp(const QuizApp(
      colors: colors,
      startAlignment: startAlignment,
      endAlignment: endAlignment));
}
