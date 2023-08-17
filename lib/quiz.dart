import 'package:flutter/material.dart';
import 'package:advanced_basics/start_screen.dart';
import 'package:advanced_basics/questions_screen.dart';

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

  void switchScreen() {
    setState(() {
      currentScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (currentScreen == 'questions-screen') {
      screenWidget = const QuestionsScreen(text: 'Hi');
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
