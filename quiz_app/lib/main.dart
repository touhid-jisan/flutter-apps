import 'package:flutter/material.dart';

void main() => runApp(MyApp());

@override
class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}
class MyAppState extends State<MyApp> {

  void answerQuestion() {
    setState(() {
      index = index+1;  
    });
    print(index);
  }

  var index = 0;
  Widget build(BuildContext context) {
    var questions = ['Whats your fav color','Whats your fav food'];
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'), 
        ),
        body: Column(
          children: <Widget>[
            Text(questions[index]),
            
            RaisedButton(
              child: Text('Question 1'), 
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Question 2'), 
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Question 3'), 
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Question 4'), 
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
