import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(  
      body: Container(
        padding: const EdgeInsets.all(50),
        margin: const EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[100],  
                borderRadius: BorderRadius.circular(100) 
              ),
              child: const Center(
                child: Text(
                  'OOP',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[300],  
                borderRadius: BorderRadius.circular(100) 
              ),
              child: const Center(
                child: Text(
                  'DART',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF1E88E5),  
                borderRadius: BorderRadius.circular(100) 
              ),
              child: const Center(
                child: Text(
                  'FLUTTER',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  ));
}
