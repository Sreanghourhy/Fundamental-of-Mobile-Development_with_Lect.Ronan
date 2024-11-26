 
class Quiz {
  final String title;
  final List<Question> questions;

  Quiz({required this.title, required this.questions});

  getCurrentQuestion() {}

  void nextQuestion() {}

  void reset() {}
}

class Question {
  final String title;
  final List<String> possibleAnswers;
  final String goodAnswer;

  const Question({required this.title, required this.possibleAnswers, required this.goodAnswer});

  String? get text => null;

  get options => null;
}
