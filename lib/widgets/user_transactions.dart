import 'package:expense_tracker/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

import '../models/transaction.dart';
import 'new_transaction.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({super.key});

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      amount: 10.00,
      date: DateTime.now(),
      title: 'New Shoes',
    ),
    Transaction(
      id: 't2',
      amount: 20.00,
      date: DateTime.now(),
      title: 'Groceries',
    ),
    Transaction(
      id: 't2',
      amount: 20.00,
      date: DateTime.now(),
      title: 'Groceries',
    ),
    Transaction(
      id: 't2',
      amount: 20.00,
      date: DateTime.now(),
      title: 'Groceries',
    ),
    Transaction(
      id: 't2',
      amount: 20.00,
      date: DateTime.now(),
      title: 'Groceries',
    )
  ];

  void _addNewTransaction(String title, double amount) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      amount: amount,
      date: DateTime.now(),
      title: title,
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransactions(_addNewTransaction),
        TransactionList(transactions: _userTransactions),
      ],
    );
  }
}
