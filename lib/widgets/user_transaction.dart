import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({super.key});

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransaction = [
    Transaction(
      id: 't1',
      date: DateTime.now(),
      amount: 69.99,
      title: "New Shoes",
    ),
    Transaction(
      id: 't1',
      date: DateTime.now(),
      amount: 69.99,
      title: "New Shoes",
    ),
    Transaction(
      id: 't1',
      date: DateTime.now(),
      amount: 69.99,
      title: "New Shoes",
    ),
  ];
  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      date: DateTime.now(),
      amount: txAmount,
      title: txTitle,
    );
    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransaction),
      ],
    );
  }
}
