import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Hobbies'),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            margin: const EdgeInsets.symmetric(vertical: 40),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
            ),
            child:const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(Icons.flight_takeoff, color: Colors.white, size: 30),
                ),
                 Text(
                  'Travelling',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
