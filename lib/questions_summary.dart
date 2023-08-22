import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:advanced_basics/typography/custom_text.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            var isCorrect = data['user_answer'] == data['correct_answer'];

            return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  decoration: BoxDecoration(
                    color: (isCorrect
                        ? Colors.lightBlueAccent
                        : Colors.pinkAccent),
                    border: Border.all(color: Colors.black45, width: 2),
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: CustomText(
                        'QuestionButton',
                        ((data['question_index'] as int) + 1).toString(),
                        TextAlign.left),
                  )),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomText('QuestionText', data['question'] as String,
                        TextAlign.left),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomText('UserAnswerText', data['user_answer'] as String,
                        TextAlign.left),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomText(
                      'CorrectAnswerText',
                      data['correct_answer'] as String,
                      TextAlign.left,
                    ),
                    const SizedBox(height: 15)
                  ],
                ),
              ),
            ]);
          }).toList(),
        ),
      ),
    );
  }
}
