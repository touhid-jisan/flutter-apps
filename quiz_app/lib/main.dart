import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

@override
class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
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
            Question(questions[index]),
            Answer(answerQuestion), 
            Answer(answerQuestion),
            Answer(answerQuestion),
            Answer(answerQuestion),
          ],
        ),
      ),
    );
  }
}
