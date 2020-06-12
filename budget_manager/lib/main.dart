import 'package:budget_manager/widgets/transaction_list.dart';
import 'package:flutter/material.dart';
import './models/transaction.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Budget Manager',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  // String titleInput;
  // String amountInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Budget Manager'),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            //margin: EdgeInsets.all(5),
            width: double.infinity,
            child: Card(
              shadowColor: Colors.yellow,
              child: Text('Chart'),
              elevation: 15,
            ),
          ),
          Card(
            child: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: 'Enter Title'),
                    //onChanged: (value) => titleInput=value,
                    controller: titleController,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Enter Amount'),
                    //onChanged: (value) => amountInput=value,
                    controller: amountController,
                  ),
                  FlatButton(
                      child: Text('Add Transiction'),
                      textColor: Colors.purple, 
                      onPressed: () {
                        // print(titleInput);
                        // print(amountInput);
                        print(titleController.text);
                      })
                ],
              ),
            ),
          ),
          TransactionList(),
        ],
      ),
    );
  }
}
