import 'package:flutter/material.dart';
import 'transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Transaction> transaction = [
    Transaction(
        id: 't1', title: "New showes", amount: 69.3, date: DateTime.now()),
    Transaction(
        id: 't2', title: "Growsery", amount: 999.3, date: DateTime.now()),
  ];
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: Card(
                child: Container(
                    width: double.infinity,
                    height: 200,
                    color: Colors.blue,
                    child: Text("Chart")),
                elevation: 5,
              ),
            ), //card
            Column(
              children: transaction.map((tx) {
                return Card(
                  child: Text(tx.title),
                );
              }).toList(),
            ),
          
          ],
        ),
      ),
    );
  }


}
