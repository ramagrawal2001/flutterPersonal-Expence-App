import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              //onChanged: (value) => titleInput = value,
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              //onChanged: (value) => amountInput = value,
              controller: amountController,
            ),
            TextButton(
              onPressed: () => addTx(
                titleController.text,
                double.parse(amountController.text),
              ),
              child: Text('Add Transaction'),
              style: ButtonStyle(
                foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.purple),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
