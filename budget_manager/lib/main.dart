import 'package:flutter/material.dart';
import './transaction.dart';

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

  final List<Transaction> transaction = [
    Transaction(id: 'A1',title: 'First Item Name', amount: 23.32,date: DateTime.now()),
    Transaction(id: 'A2',title: 'Second Item Name', amount: 43.55,date: DateTime.now()),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Budget Manager'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child : Card(
              shadowColor: Colors.yellow,
              child: Text('Chart'),
              elevation: 15,
            ),
          ),
          Column(children: transaction.map((tx) {
            return Card(
              child: Text(tx.title),
            );
          }).toList()),
        ],
      ),
    );
  }
}