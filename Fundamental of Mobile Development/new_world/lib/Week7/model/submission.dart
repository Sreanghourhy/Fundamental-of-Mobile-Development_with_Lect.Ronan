import 'package:flutter/material.dart';
import 'package:new_world/Week7/model/quiz.dart';


class Answer {
  String questionAnswer;

  Answer(this.questionAnswer);

  bool isCorrect(String goodAnswer) {
    return questionAnswer == goodAnswer;
  }
}

class Submission {
  List<Answer> answers =[];

 void addAnswer(Answer answer) {
    answers.add(answer);
  }
  void removeAnswers(){
    answers.clear();
  }

int getScore(List<Question> questions) {
  int score = 0;
  for (var question in questions) {
    // Find the answer for this question
    var answer = answers.firstWhere(
      (a) => a.questionAnswer == question.title,
      orElse: () => null,
    );

    // Check if the answer is correct
    if (answer != null && answer.isCorrect(question.goodAnswer)) {
      score++;
      }
    }
    return score;
  }
}
