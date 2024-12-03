import 'package:flutter/material.dart';
import 'quiz_app.dart';
import 'package:new_world/Week7/model/quiz.dart';
import 'package:new_world/Week7/model/question.dart';

// void main() {
//   // Mock Data for the Quiz
//   final quiz = Quiz(
//     title: "Sample Flutter Quiz",
//     questions: [
//       Question(
//         text: "What is Flutter?",
//         options: ["SDK", "Programming Language", "IDE", "Library"],
//         correctAnswer: "SDK",
//       ),
//       Question(
//         text: "Which language is used by Flutter?",
//         options: ["Dart", "Python", "JavaScript", "Java"],
//         correctAnswer: "Dart",
//       ),
//       Question(
//         text: "Who developed Flutter?",
//         options: ["Google", "Microsoft", "Apple", "Facebook"],
//         correctAnswer: "Google",
//       ),
//     ],
//   );

//   runApp(MyApp(quiz: quiz));
// }

class MyApp extends StatelessWidget {
  final Quiz quiz;

  const MyApp({Key? key, required this.quiz}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Quiz',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.blue,
      ),
      home: QuizApp(quiz: quiz), // Pass the mock quiz data here
    );
  }
}
