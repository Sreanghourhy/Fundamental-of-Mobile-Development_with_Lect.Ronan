import 'package:flutter/material.dart';

class ExpenseForm extends StatefulWidget {
  const ExpenseForm({super.key});

  @override
  State<ExpenseForm> createState() => _ExpenseFormState();
}

class _ExpenseFormState extends State<ExpenseForm> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController(); // Fixed the typo: _amouthController -> _amountController

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose(); // Dispose of the amountController
    super.dispose();
  }

  void _showAlertDialog(BuildContext context) {
    showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('AlertDialog Title'),
        content: const SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('This is a demo alert dialog.'),
              Text('Would you like to approve of this message?'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Approve'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: const InputDecoration(
              label: Text('Title'),
            ),
          ),
          TextField(
            controller: _amountController,
            maxLength: 50,
            decoration: const InputDecoration(
              prefix: Text("\$"), // The $ sign is a special character, so you need to use a backslash (\) before the dollar sign to escape it properly.
            ),
            keyboardType: TextInputType.numberWithOptions(decimal: true), // Ensure the amount is numeric
          ),
          ElevatedButton(
            onPressed: () {
              _showAlertDialog(context); // Show the dialog with values
            },
            child: const Text('Check value'),
          ),
        ],
      ),
    );
  }
}
