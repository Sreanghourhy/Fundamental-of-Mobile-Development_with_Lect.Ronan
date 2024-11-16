import 'package:flutter/material.dart';
import 'package:new_world/Week6/Section1/BONUS/Temperature.dart';



class TemperatureApp extends StatefulWidget {
  const TemperatureApp({super.key});

  @override
  State<TemperatureApp> createState() {
    return _TemperatureAppState();
  }
}

class _TemperatureAppState extends State<TemperatureApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff16C062),
                Color(0xff00BCDC),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child:  Temperature(),  // This is where Oggy is used as a child widget
        ),
      ),
    );
  }
}

void main() {
  runApp(const TemperatureApp());
}