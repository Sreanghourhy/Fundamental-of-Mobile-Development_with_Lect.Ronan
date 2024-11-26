import 'package:flutter/material.dart';
import 'model/quiz.dart';
import 'screens/welcome_screen.dart';
import 'screens/question_screen.dart';
import 'screens/result_screen.dart';

Color appColor = Colors.blue[500] as Color;

enum QuizState { notStarted, started, finished }

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  QuizState _quizState = QuizState.notStarted;
  final Quiz _quiz = Quiz(); // Mock quiz data
  final Submission _submission = Submission();

  void startQuiz() {
    setState(() {
      _quizState = QuizState.started;
    });
  }

  void answerQuestion(String answer) {
    _submission.addAnswer(_quiz.getCurrentQuestion()!, answer);

    setState(() {
      if (_quiz.isLastQuestion()) {
        _quizState = QuizState.finished;
      } else {
        _quiz.nextQuestion();
      }
    });
  }

  void restartQuiz() {
    setState(() {
      _quizState = QuizState.notStarted;
      _submission.removeAnswers();
      _quiz.reset();
    });
  }

  @override
  Widget build(BuildContext context) {
    switch (_quizState) {
      case QuizState.notStarted:
        return WelcomeScreen(onStart: startQuiz, quizTitle: "Flutter Quiz");
      case QuizState.started:
        return QuestionScreen(
          question: _quiz.getCurrentQuestion()!,
          onTap: answerQuestion,
        );
      case QuizState.finished:
        return ResultScreen(
          quiz: _quiz,
          submission: _submission,
          onRestart: restartQuiz,
        );
      default:
        return const SizedBox(); // Fallback widget.
    }
  }
}