import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: CircleAvatar(
                            radius: 20,
                            backgroundColor:
                                data['user_answer'] == data['correct_answer']
                                    ? const Color.fromARGB(208, 52, 81, 226)
                                    : const Color.fromARGB(208, 226, 52, 209),
                            child: Text(((data['question_index'] as int) + 1)
                                .toString())),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          data['question'] as String,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color.fromARGB(255, 223, 185, 217)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(data['user_answer'] as String,
                            style: const TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 226, 162, 218))),
                        Text(data['correct_answer'] as String,
                            style: const TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 81, 99, 239))),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
