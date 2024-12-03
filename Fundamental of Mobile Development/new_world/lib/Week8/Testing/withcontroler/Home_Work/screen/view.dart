import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
// import 'package:new_world/Code_Testing/0%20-%20Start%20code/models/hello.dart';
import 'package:new_world/Week8/Testing/withcontroler/Home_Work/screen/welcome.dart'; // Correct the import here
import 'package:new_world/Week8/Testing/withcontroler/Home_Work/model/Data/Stock.dart'; // Assuming you have your models defined

// Assuming ExpenseType and Expense model are defined somewhere

class ExpenseItem extends StatelessWidget {
  final Expense expense;

  ExpenseItem({required this.expense});

  @override
  Widget build(BuildContext context) {
    IconData getIcon(ExpenseType type) {
      switch (type) {
        case ExpenseType.food:
          return Icons.fastfood;
        case ExpenseType.travel:
          return Icons.flight;
        case ExpenseType.leisure:
          return Icons.sports_handball;
        case ExpenseType.work:
          return Icons.work;
        default:
          return Icons.help_outline;
      }
    }

    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  expense.title,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 4),
                Text(
                  "\$${expense.amount.toStringAsFixed(2)}",
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Icon(getIcon(expense.type), color: Colors.blue),
                const SizedBox(width: 8),
                Text(
                  DateFormat.yMd().format(expense.date),
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ExpenseListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // First Row: Left-aligned text
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            color: Colors.green[600],
            child: Row(
              children: [
                const Text(
                  'Hello',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Spacer for the middle space between items
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    // Navigate to the Welcome1 screen when button is pressed
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Welcome1(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Expanded(child:  ListView.builder(
            itemCount: expenses.length,
            itemBuilder: (context, index) {
              return ExpenseItem(expense: expenses[index]);
            },
          ),
          )
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ExpenseListScreen(),
  ));
}
