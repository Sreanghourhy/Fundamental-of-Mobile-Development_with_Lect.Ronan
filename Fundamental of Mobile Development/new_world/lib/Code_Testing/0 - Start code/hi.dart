import 'package:flutter/material.dart';
import 'package:new_world/Code_Testing/0 - Start code/models/expense.dart';
import 'package:new_world/Code_Testing/0 - Start code/models/hello.dart'; // Make sure hello.dart is correctly imported

// Mock Expense Model (replace with your actual model or import it)
class Expense {
  final String title;
  final double amount;
  final DateTime date;
  final ExpenseType type;

  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.type,
  });
}

enum ExpenseType { book, food, travel, entertainment }

// Mock Data (replace with actual data source if needed)
final List<Expense> expenses = [
  Expense(
    title: 'Ronan The Best Book',
    amount: 15000.0,
    date: DateTime(2024, 11, 9),
    type: ExpenseType.book,
  ),
  Expense(
    title: 'Dinner with Friends',
    amount: 200.5,
    date: DateTime(2024, 11, 6),
    type: ExpenseType.food,
  ),
  Expense(
    title: 'Trip to Paris',
    amount: 3000.0,
    date: DateTime(2024, 10, 15),
    type: ExpenseType.travel,
  ),
];

// Main App Entry Point
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExpenseHomePage(),
    ),
  );
}

// Home Page
class ExpenseHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expenses'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HelloScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: const ExpenseView(),
    );
  }
}

// Expense View
class ExpenseView extends StatefulWidget {
  const ExpenseView({super.key});

  @override
  State<ExpenseView> createState() => _ExpenseViewState();
}

class _ExpenseViewState extends State<ExpenseView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length, // Total expenses
      itemBuilder: (context, index) {
        final expense = expenses[index];
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blueAccent,
              child: Icon(
                _getIcon(expense.type), // Icon based on expense type
                color: Colors.white,
              ),
            ),
            // title: Text(expense.title),
            // subtitle: Text(
            //   '${expense.type.name.capitalize()} | ${DateFormat.yMd().format(expense.date)}',
            // ),
            trailing: Text(
              '\$${expense.amount.toStringAsFixed(2)}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        );
      },
    );
  }

  IconData _getIcon(ExpenseType type) {
    switch (type) {
      case ExpenseType.book:
        return Icons.book;
      case ExpenseType.food:
        return Icons.fastfood;
      case ExpenseType.travel:
        return Icons.airplanemode_active;
      case ExpenseType.entertainment:
        return Icons.movie;
      default:
        return Icons.money;
    }
  }
}

// Hello Screen (Placeholder for "Add Expense" Feature)
class HelloScreen extends StatelessWidget {
  const HelloScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello Screen'),
      ),
      body: const Center(
        child: Text('Welcome to the Hello Screen!'),
      ),
    );
  }
}

// Extension for String Capitalization
extension StringExtension on String {
  String capitalize() => '${this[0].toUpperCase()}${substring(1)}';
}
