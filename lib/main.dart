import 'package:flutter/material.dart';
import './widget/user_transaction.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // const MyApp({Key? key}) : super(key: key);
  // String? titleInput;
  // String? amountInput;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: SingleChildScrollView(
          child: Column(
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
            UserTransactionState()
            ],
          ),
        ),
      ),
    );
  }
}
