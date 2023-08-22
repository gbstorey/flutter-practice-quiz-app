import 'package:flutter/material.dart';
import 'package:advanced_basics/start_screen.dart';
import 'package:advanced_basics/questions_screen.dart';
import 'package:advanced_basics/results_screen.dart';
import 'package:advanced_basics/data/questions.dart';

class QuizApp extends StatefulWidget {
  const QuizApp(
      {super.key,
      required this.colors,
      required this.startAlignment,
      required this.endAlignment});

  final List<Color> colors;
  final Alignment startAlignment;
  final Alignment endAlignment;

  @override
  State<QuizApp> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  var currentScreen = 'start-screen';
  List<String> _selectedAnswers = [];

  void startQuiz() {
    setState(() {
      currentScreen = 'questions-screen';
    });
  }

  void resetQuiz() {
    setState(() {
      currentScreen = 'questions-screen';
    });
    _selectedAnswers = [];
  }

  void chooseAnswer(String answer) {
    _selectedAnswers.add(answer);
    if (_selectedAnswers.length == questions.length) {
      setState(() {
        currentScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(startQuiz);

    if (currentScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(chooseAnswer);
    }

    if (currentScreen == 'results-screen') {
      screenWidget = ResultsScreen(_selectedAnswers, resetQuiz);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: widget.startAlignment,
                  end: widget.endAlignment,
                  colors: widget.colors)),
          child: screenWidget,
        ),
      ),
    );
  }
}
