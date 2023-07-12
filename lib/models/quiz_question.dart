class QuizQuestion {
  const QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffleList =
        List.of(answers); // deepcopy of a list  shuffle -> changes the index
    shuffleList.shuffle();
    return shuffleList;
  }
}
