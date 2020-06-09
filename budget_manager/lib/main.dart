import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Budget Manager'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            child : Card(
              shadowColor: Colors.yellow,
              child: Text('in card'),
              elevation: 15,
            ),
          ),
          Card(
            child:Text('in second card'), 
          ),
        ],
      ),
    );
  }
}