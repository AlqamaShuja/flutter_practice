import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class AddNewTransaction extends StatefulWidget {
  final Function _addNewTx;
  const AddNewTransaction(this._addNewTx);

  @override
  State<AddNewTransaction> createState() => _AddNewTransactionState();
}

class _AddNewTransactionState extends State<AddNewTransaction> {
  TextEditingController titleController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  var _selectedDate;

  void _openCalender(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2019),
      lastDate: DateTime.now(),
    ).then((value) {
      if (value == null) {
        return;
      }
      setState(() {
        _selectedDate = value;
      });
    });
  }

  void handleSubmit() {
    if (titleController.text.isEmpty ||
        amountController.text.isEmpty ||
        _selectedDate == null) {
      return;
    }
    widget._addNewTx(
      titleController.text,
      amountController.text,
      _selectedDate,
    );
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: "Enter Title"),
              onSubmitted: (_) => handleSubmit(),
            ),
            TextField(
              controller: amountController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Enter Amount"),
              onSubmitted: (_) => handleSubmit(),
            ),
            Row(
              children: [
                Text(
                  _selectedDate == null
                      ? "No Date Chosen"
                      : "Picked Date: ${DateFormat.yMd().format(_selectedDate)}",
                  style: const TextStyle(color: Colors.grey, fontSize: 16),
                ),
                TextButton(
                  onPressed: () => _openCalender(context),
                  child: Text(
                    "Choose Date",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: ElevatedButton(
                onPressed: handleSubmit,
                child: const Text("Add Transaction"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
