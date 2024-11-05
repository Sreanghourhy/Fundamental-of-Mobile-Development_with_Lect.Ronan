import 'package:flutter/material.dart';

class HobbyCard extends StatelessWidget {
  const HobbyCard({
    required this.title,
    required this.icon,
    this.color = Colors.blue, // Default color is blue
    super.key,
  });

  final String title;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color.withOpacity(0.7), color],
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white, size: 30),
          const SizedBox(width: 20),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              decoration: TextDecoration.none,
            ),
          ),
        ],
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
              HobbyCard(
                title: "Travelling",
                icon: Icons.flight_takeoff,
                color: Color(0xff1142BF),
              ),
              SizedBox(height: 10,),
              HobbyCard(
                title: "Photography",
                icon: Icons.camera_alt,
                color: Color.fromARGB(255, 247, 79, 79),
              ),
              SizedBox(height: 10,),
              HobbyCard(
                title: "Reading",
                icon: Icons.book, // This one uses the default blue color
              ),
            ],
          ),
        ),
      ),
    );
  }
}
