import 'package:flutter/material.dart';
import '../widgets/chart_bar.dart';
import '../model/transaction.dart';
import 'package:intl/intl.dart';

class Chart extends StatelessWidget {
  // const Chart({ Key? key }) : super(key: key);
  final List<Transaction> recentTransaction;
  Chart(this.recentTransaction);

  List<Map<String, dynamic>> get groupedTransactionValues {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(
        Duration(days: index),
      );
      double totalSum = 0.0;
      for (var i = 0; i < recentTransaction.length; i++) {
        if (recentTransaction[i].date.day == weekDay.day &&
            recentTransaction[i].date.month == weekDay.month &&
            recentTransaction[i].date.year == weekDay.year) {
          totalSum += recentTransaction[i].amount;
        }
      }
      // print(DateFormat.E().format(weekDay));
      // print(totalSum);
      return {
        'day': DateFormat.E().format(weekDay).substring(0, 1),
        'amount': totalSum
      };
    }).reversed.toList();
  }

  double get totalSpending {
    return groupedTransactionValues.fold(0.0, (sum, item) {
      return sum + item['amount'];
    });
  }

  @override
  Widget build(BuildContext context) {
    // print(groupedTransactionValues);
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: groupedTransactionValues.map((data) {
            // return Text('${data['day']}:${data['amount']}');
            return Flexible(
              fit:FlexFit.tight,
                child: ChartBar(
                    data['day'],
                    data['amount'],
                    totalSpending == 0.00
                        ? 0.0
                        : (data['amount'] as double) / totalSpending));
          }).toList(),
        ),
      ),
    );
  }
}
