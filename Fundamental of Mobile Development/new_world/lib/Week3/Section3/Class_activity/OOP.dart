import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(this.text, this.start, this.end, {super.key});

  final String text;
  final Color start;
  final Color end;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [start, end],
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Button("HELLO 1", Color.fromARGB(255, 196, 8, 8), Color(0xff1142BF)),
              Button("HELLO 2", Color.fromARGB(255, 247, 79, 79), Color(0xff1142BF)),
              Button("HELLO 2", Color.fromARGB(255, 207, 10, 105), Color(0xff1142BF)),
            ],
          ),
        ),
      ),
    );
  }
}
