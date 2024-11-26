import 'package:flutter/material.dart';
import 'package:new_world/Week7/model/quiz.dart';

class Answer {
  final Question question;
  final String questionAnswer;

  Answer(this.questionAnswer, this.question);

  bool isCorrectAnswer() => question.goodAnswer == questionAnswer;
}

class Submission {
  final Map<Question, Answer> _answers = {};

  int getScore() {
    int score = 0;
    for (Question q in _answers.keys) {
      Answer? answer = _answers[q];
      score += (answer?.isCorrectAnswer() ?? false) ? 1 : 0;
    }
    return score;
  }

  Answer? goodAnswerFor(Question question) {
    return _answers[question];
  }

  void addAnswer(param0, String answer) {}

  void removeAnswers() {}
}
