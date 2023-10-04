import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_summary.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.restartQuiz,
      {super.key, required this.chosenAnswers});
  final void Function() restartQuiz;

  final List<String> chosenAnswers;
  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData
        .where((data) => data['user_answer'] == data['correct_answer'])
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Correct $numCorrectQuestions out of $numTotalQuestions',
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(255, 219, 170, 212))),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData),
            const SizedBox(),
            OutlinedButton.icon(
              icon: const Icon(Icons.autorenew_rounded),
              onPressed: restartQuiz,
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              label: const Text(
                "Restart Quiz",
                style: TextStyle(
                  color: Color.fromARGB(200, 255, 255, 255),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
