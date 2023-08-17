import 'package:flutter/material.dart';
import 'package:advanced_basics/answer_button.dart';
import 'package:advanced_basics/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.text});

  final String text;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 30),
          ...currentQuestion.answers.map((answer) {
            return AnswerButton(answer, () {});
          })
        ],
      ),
    );
  }
}