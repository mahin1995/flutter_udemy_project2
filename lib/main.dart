import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            child: Container(width: 100,height: 200,child: Text("Chart")),
          elevation: 5, 
          ),
          
           Card(
            child: Text("List of chart"),
          )
        ],
      ),
    );
  }
}
