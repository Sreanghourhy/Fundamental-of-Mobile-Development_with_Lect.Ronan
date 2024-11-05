import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    home: Scaffold(
      body: Center(
        child: Text(
          'Ronan the best', 
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.blue,
          ),
          )
      ),
    ),
  ));
}