class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> get shuffledAnswers {
    final temp = List.of(answers);
    temp.shuffle();
    return temp;
  }
}
