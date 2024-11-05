import 'package:flutter/material.dart';

class Customcard extends StatelessWidget {
  const Customcard(this.text, this.start, this.end, {super.key});

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
              Customcard("OOP", Color.fromARGB(255, 47, 2, 2), Color(0xff1142BF)),
              Customcard("DART", Color.fromARGB(255, 136, 6, 84), Color.fromARGB(255, 17, 191, 20)),
              Customcard("FLUTTEr", Color.fromARGB(255, 109, 6, 130), Color.fromARGB(255, 2, 88, 107)),
            ],
          ),
        ),
      ),
    );
  }
}
