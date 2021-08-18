import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addNewTransaction;
  final titleController=TextEditingController();
  final  amountController=TextEditingController();
  // const NewTransaction({ Key? key }) : super(key: key);
  NewTransaction(this.addNewTransaction);
  @override
  Widget build(BuildContext context) {
    return Card(
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
                        addNewTransaction(titleController.text,double.parse(amountController.text));
                        print(titleController.text,);
                        print(amountController.text);
                      },
                      child: Text("Add Transaction"),
                      color: Colors.purple,
                    )
                  ],
                ),
              ),
            );
  }
}