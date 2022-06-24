import 'package:flutter/material.dart ';

import '../models/transaction.dart';
import './new_transaction.dart';
import './transactions_list.dart';

class UserTransaction extends StatefulWidget {
  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'Coffee',
      amount: 5.4,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Milk',
      amount: 10,
      date: DateTime.now(),
    ),
  ];
  void _addNewTransaction(String txtitle, double txamount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: txtitle,
        amount: txamount,
        date: DateTime.now());

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
