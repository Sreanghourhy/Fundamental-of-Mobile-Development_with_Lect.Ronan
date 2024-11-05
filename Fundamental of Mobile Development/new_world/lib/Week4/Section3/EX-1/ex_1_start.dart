import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Selectable Buttons'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SelectableButton(),
              const SizedBox(height: 20),
              SelectableButton(),
              const SizedBox(height: 20),
              SelectableButton(),
              const SizedBox(height: 20),
              SelectableButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class SelectableButton extends StatefulWidget {
  @override
  _SelectableButtonState createState() => _SelectableButtonState();
}

class _SelectableButtonState extends State<SelectableButton> {
  bool isSelected = false;

  void toggleSelection() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        onPressed: toggleSelection,
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? Colors.blue[500] : Colors.blue[50],
          foregroundColor: isSelected ? Colors.white : Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Center(
          child: Text(isSelected ? 'Selected' : 'Not selected'),
        ),
      ),
    );
  }
}
