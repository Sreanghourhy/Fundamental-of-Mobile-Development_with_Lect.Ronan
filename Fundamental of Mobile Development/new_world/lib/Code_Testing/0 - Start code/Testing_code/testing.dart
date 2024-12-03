import 'package:flutter/material.dart';

class StayAlone extends StatelessWidget {
  const StayAlone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField'),
        backgroundColor: Colors.green,
      ),
      body: 
      Container(
        padding: const EdgeInsets.all(8),
        child: TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 3, color: Colors.greenAccent),
            borderRadius: BorderRadius.circular(50.0)
            ),
          ),
        ),
      ),
    );
  }
}