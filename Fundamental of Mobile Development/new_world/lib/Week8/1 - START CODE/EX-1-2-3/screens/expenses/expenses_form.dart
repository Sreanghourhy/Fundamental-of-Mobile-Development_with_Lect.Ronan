import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../models/expense.dart';
import 'package:time_picker_spinner/time_picker_spinner.dart';
class ExpenseForm extends StatefulWidget {
  const ExpenseForm({super.key, required this.onCreated});

  final Function(Expense) onCreated;

  @override
  State<ExpenseForm> createState() => _ExpenseFormState();
}

class _ExpenseFormState extends State<ExpenseForm> {
  final _titleController = TextEditingController();
  final _valueController = TextEditingController();

  String get title => _titleController.text;

  @override
  void dispose() {
    _titleController.dispose();
    _valueController.dispose();
    super.dispose();
  }
  String? selectedCategory;
  DateTime? selectedDate;
  
  DateTime? get pickedDate => null;

  void onCancel() {
    
    // Close modal
    Navigator.pop(context);
  }

  void onAdd() {
    // 1- Get the values from inputs
    String title = _titleController.text;
    double amount = double.parse(_valueController.text);

    //exercise 2 calender

    if (title.isEmpty || amount <= 0 || selectedDate == null || selectedCategory == null) {
      // Show an error message if the form is incomplete
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill out all fields.')),
      );
      return;
    }

    // 2- Create the expense
    Expense expense = Expense(
        title: title,
        amount: amount,
        date: DateTime.now(),     //  TODO :  For now it s a fake data
        category: Category.food); //  TODO :  For now it s a fake data

    // 3- Ask the parent to add the expense
    widget.onCreated(expense);

    // 4- Close modal
    Navigator.pop(context);
  }
  void _selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if(pickedDate !=null){
      setState(() {
         selectedDate = pickedDate;
      });
    }
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
            decoration:  InputDecoration(
              label: Text('text'),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 3, color: Colors.greenAccent),
              borderRadius: BorderRadius.circular(50.0)
              )
            ),
          ),
          TextField(
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly,
            ],
            controller: _valueController,
            maxLength: 50,
            decoration:  InputDecoration(
              prefix: Text('\$ '),
              label: Text('Amount'),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 3, color: Colors.greenAccent),
              borderRadius: BorderRadius.circular(50.0)
              )
            ),
          ),
            DropdownButton<String>(
              value: selectedCategory,
              hint: const Text("Select Category"),
              items: Category.values.map((Category category) {
                return DropdownMenuItem<String>(
                  value: category.name,
                  child: Text(category.name.toUpperCase()),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedCategory = newValue;
                });
              },
            ),
          Row(
            children: [
              Text(
                selectedDate == null
                ? 'No Date Selected'
                : 'Selected Date: ${selectedDate!.toLocal().toString().split('')[0]}',
              ),
              IconButton(
                onPressed: _selectDate, 
                icon: const Icon(Icons.calendar_today
                )
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: onCancel, child: const Text('Cancel')),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(onPressed: onAdd, child: const Text('Create')),
            ],
          )
        ],
      ),
    );
    
  }
}
