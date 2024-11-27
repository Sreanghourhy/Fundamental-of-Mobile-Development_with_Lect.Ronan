import 'package:flutter/material.dart';

import 'package:new_world/Week8/Home_Work/model/Data/Stock.dart';

// import 'stock.dart'; // Assuming this contains the Expense model and list

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
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Icon(getIcon(expense.type), color: Colors.blue),
                const SizedBox(width: 8),
                // Text(
                //   DateFormat.yMd().format(expense.date),
                //   style: TextStyle(color: Colors.grey),
                // ),
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
      appBar: AppBar(
        title: const Text("Expense Tracker"),
      ),
      body: ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (context, index) {
          return ExpenseItem(expense: expenses[index]);
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ExpenseListScreen(),
  ));
}
