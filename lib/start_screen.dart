import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

// const == compile-time known variable. use 'final' for dynamic values.

void startQuizHandler() {
  print("Starting quiz!");
}

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset('assets/images/quiz-logo.png',
          width: 300, color: const Color.fromARGB(150, 255, 255, 255)),

      // Opacity(
      //   opacity: 0.5,
      //   child: Image.asset(
      //     'assets/images/quiz-logo.png',
      //     width: 300,
      //   ),
      // ),

      Container(
          padding: const EdgeInsets.only(top: 80, bottom: 40),
          child: Text(
            "Learn Flutter the fun way!",
            style: GoogleFonts.lato(
              color: const Color.fromARGB(100, 255, 200, 255),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          )),
      OutlinedButton.icon(
          onPressed: () {
            startQuiz();
          },
          style: OutlinedButton.styleFrom(
            side: const BorderSide(width: 1.25),
            padding:
                const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 15),
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text(
            "Start Quiz",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ))
    ]));
  }
}
