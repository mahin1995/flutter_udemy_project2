import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'model/transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Transaction> transaction = [
    Transaction(
        id: 't1', title: "New showes", amount: 69.3, date: DateTime.now()),
    Transaction(
        id: 't2', title: "Growsery", amount: 999.3, date: DateTime.now()),
    Transaction(
        id: 't2', title: "Growsery", amount: 999.3, date: DateTime.now()),
  ];
  // const MyApp({Key? key}) : super(key: key);
  // String? titleInput;
  // String? amountInput;
  final titleController=TextEditingController();
  final amountController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: Card(
                child: Container(
                    width: double.infinity,
                    color: Colors.blue,
                    child: Text("Chart")),
                elevation: 5,
              ),
            ), //card
            Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextField(
                      decoration: InputDecoration(labelText: 'Title'),
                      controller: titleController,
                      // onChanged: (val) => titleInput = val,
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Amount'),
                      controller: amountController,
                      // onChanged: (val) => amountInput = val,
                    ),
                    FlatButton(
                      onPressed: () {
                        // print(titleInput);
                        // print(amountInput);
                        print(titleController.text);
                        print(amountController.text);
                      },
                      child: Text("Add Transaction"),
                      color: Colors.purple,
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: transaction.map((tx) {
                return Card(
                    child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        '\$ ${tx.amount}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.purple),
                      ),
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.purple, width: 2)),
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          tx.title,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          DateFormat.yMMMd().format(tx.date),
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                    )
                  ],
                ));
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
