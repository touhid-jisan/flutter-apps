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
    var questions = [
      {'questionText' : 'Whats your fav food', 
        'answerText' : ['Biriyani', 'Khichuri', 'Kacchi','Polaw']
      },
      {'questionText' : 'Whats your fav color',
        'answerText': ['Red', 'Black', 'Blue', '  Pink']
      },
      {'questionText' : 'Whats your fav animal',
        'answerText': ['Cat', 'Dog', 'Bird', 'Snake']
      },
      {'questionText' : 'Whats your fav instructor',
        'answerText': ['Masx', 'Maxs', 'Mxas', 'Mxsa']
      },
    ];
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'), 
        ),
        body: Column(
          children: <Widget>[
            Question(questions[index]['questionText']),
            ...(questions[index]['answerText'] as List<String>).map((answer) {
              return Answer(answerQuestion, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
