import 'package:flutter/material.dart';
import '../widget/new_transaction.dart';
import '../widget/transaction_list.dart';
import '../model/transaction.dart';


class UserTransactionState extends StatefulWidget {
  const UserTransactionState({ Key? key }) : super(key: key);

  @override
  _UserTransactionStateState createState() => _UserTransactionStateState();
}

class _UserTransactionStateState extends State<UserTransactionState> {
    final List<Transaction> _userTransaction=[
    Transaction(
        id: 't1', title: "New showes", amount: 69.3, date: DateTime.now()),
    Transaction(
        id: 't2', title: "Growsery", amount: 999.3, date: DateTime.now()),
    Transaction(
        id: 't2', title: "Growsery", amount: 999.3, date: DateTime.now()),
  ];

  void _addNewTransaction(String txTitle , double txAmount){
    final newTx =Transaction(id: DateTime.now().toString(), title: txTitle, amount: txAmount, date: DateTime.now());
setState(() {
  _userTransaction.add(newTx);
});
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children:<Widget> [
      NewTransaction(_addNewTransaction),
      TransactionList(_userTransaction)
      ],
    );
  }
}