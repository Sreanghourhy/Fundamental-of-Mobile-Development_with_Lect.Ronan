import 'package:flutter/material.dart';


class Customcard extends StatelessWidget {
  const Customcard(
    this.text,
    this.color,
    {super.key}
    );

  final String text;
  final Color color;

@override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 30,
            color: Colors.white,
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
              Customcard("OOP", Color(0xff1565C0)),
              Customcard("DART",  Color(0xff1E88E5)),
              Customcard("FLUTTER",Color(0xff42A5F5)),
            ],
          ),
        ),
      ),
    );
  }
}