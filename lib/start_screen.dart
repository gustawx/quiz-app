import 'package:flutter/material.dart';

void startQuiz() {}

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Learn FLutter the fun way",
            style: TextStyle(
              color: Color.fromARGB(200, 255, 255, 255),
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            icon: const Icon(Icons.arrow_right_alt),
            onPressed: () {},
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: const Text(
              "Start Quiz",
              style: TextStyle(
                color: Color.fromARGB(200, 255, 255, 255),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
