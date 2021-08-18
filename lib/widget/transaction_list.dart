import 'package:flutter/material.dart';
import 'package:flutter_udemy_project2/model/transaction.dart';
import 'package:intl/intl.dart';


class TransactionList extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);
   final List<Transaction> transaction; 
  TransactionList(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
        child: ListView.builder(itemBuilder: (ctx,index){
          return  Card(
                        child: Row(
                      children: <Widget>[
                        Container(
                          child: Text(
                            '\$ ${transaction[index].amount}',
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
                              transaction[index].title,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              DateFormat.yMMMd().format(transaction[index].date),
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                          crossAxisAlignment: CrossAxisAlignment.start,
                        )
                      ],
                    ));
        },
        itemCount:transaction.length ,
                ),
      );
  }
}

