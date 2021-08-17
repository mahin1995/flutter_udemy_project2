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
                  child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        tx.amount.toString(),
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
                          tx.date.toString(),
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                    )
                  ],
                )
                
                );
              }).toList(),
              
            ),
          
          ],
        ),
      ),
    );
  }


}
