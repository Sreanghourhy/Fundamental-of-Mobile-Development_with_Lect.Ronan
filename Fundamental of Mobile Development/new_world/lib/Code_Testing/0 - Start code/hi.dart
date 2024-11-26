// import 'package:flutter/material.dart';
// import 'package:new_world/Week8/0 - Start code/models/expense.dart';
// import 'package:new_world/Week8/0 - Start code/models/hello.dart'; // Make sure hello.dart is correctly imported

// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: ExpenseHomePage(),
//     ),
//   );
// }

// class ExpenseHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Expenses'),
//         backgroundColor: Colors.blue,
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.add),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => const HelloScreen(),
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//       body: const ExpenseView(),
//     );
//   }
// }

// class ExpenseView extends StatefulWidget {
//   const ExpenseView({super.key});

//   @override
//   State<ExpenseView> createState() => _ExpenseViewState();
// }

// class _ExpenseViewState extends State<ExpenseView> {
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: expenses.length, // Assuming `expenses` is imported from your model
//       itemBuilder: (context, index) {
//         final expense = expenses[index];
//         return Card(
//           margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
//           child: ListTile(
//             leading: CircleAvatar(
//               backgroundColor: Colors.blueAccent,
//               child: Text(
//                 expense.type.name[0].toUpperCase(), // First letter of expense type
//                 style: const TextStyle(color: Colors.white),
//               ),
//             ),
//             title: Text(expense.title),
//             subtitle: Text(
//               '${expense.type.name.capitalize()} | ${expense.date.toLocal().toString().split(' ')[0]}',
//             ),
//             trailing: Text(
//               '\$${expense.amount.toStringAsFixed(2)}',
//               style: const TextStyle(fontWeight: FontWeight.bold),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// extension StringExtension on String {
//   String capitalize() => '${this[0].toUpperCase()}${substring(1)}';
// }

// // Define your HelloScreen in hello.dart
// class HelloScreen extends StatelessWidget {
//   const HelloScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Hello Screen'),
//       ),
//       body: const Center(
//         child: Text('Welcome to the Hello Screen!'),
//       ),
//     );
//   }
// }
