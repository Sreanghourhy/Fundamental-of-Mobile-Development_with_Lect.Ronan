import 'package:new_world/Week8/Home_Work/screen/view.dart';
import 'package:uuid/uuid.dart';

enum ExpenseType {
  food,
  travel,
  leisure,
  work,
}

const Uuid uuid = Uuid();

class Expense {
  late final String id;
  final String title;
  final double amount;
  final DateTime date;
  final ExpenseType type; // Added field for ExpenseType

  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.type, // Added parameter for ExpenseType
  }) : id = uuid.v4(); // Used the declared `uuid`
}

// List of expenses
List<Expense> expenses = [
  Expense(
    title: "hour",
    amount: 2000,
    date: DateTime(2024, 11, 10), // Corrected date format
    type: ExpenseType.travel, // Corrected case and added `type`
  ),
  Expense(
    title: "tong",
    amount: 20000,
    date: DateTime(2024, 11, 11), // Corrected date format
    type: ExpenseType.food, // Corrected case and added `type`
  ),
  Expense(
    title: "ly",
    amount: 1000,
    date: DateTime(2024, 11, 12), // Corrected date format
    type: ExpenseType.work, // Corrected case and added `type`
  ),
  Expense(
    title: "l",
    amount: 1000,
    date: DateTime(2024, 11, 13), // Corrected date format
    type: ExpenseType.leisure, // Added a valid type
  ),
  Expense(
    title: "hour",
    amount: 2000,
    date: DateTime(2024, 11, 10), // Corrected date format
    type: ExpenseType.travel, // Corrected case and added `type`
  ),
  Expense(
    title: "tong",
    amount: 20000,
    date: DateTime(2024, 11, 11), // Corrected date format
    type: ExpenseType.food, // Corrected case and added `type`
  ),
  Expense(
    title: "ly",
    amount: 1000,
    date: DateTime(2024, 11, 12), // Corrected date format
    type: ExpenseType.work, // Corrected case and added `type`
  ),

];
