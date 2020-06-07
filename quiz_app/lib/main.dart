import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

@override
class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}
class MyAppState extends State<MyApp> { 

  final _questions = const[ //if i use "const [" than we can not add value
      {'questionText' : 'Whats your fav food', 
        'answerText' : [{'text':'Biriyani', 'score':6}, {'text':'Khichuri', 'score': 8}, {'text':'Kacchi', 'score': 10},{'text':'Polaw', 'score': 4}]
      },
      {'questionText' : 'Whats your fav color',
        'answerText': [{'text':'Red', 'score': 6}, {'text': 'Black', 'score': 8}, {'text':'Blue','score': 10}, {'text':'Pink', 'score':4}]
      },
      {'questionText' : 'Whats your fav animal',
        'answerText': [{'text': 'Cat','score': 10}, {'text': 'Dog', 'score': 8}, {'text': 'Bird', 'score': 6}, {'text': 'Snake', 'score': 4}]
      },
      {'questionText' : 'Whats your fav instructor',
        'answerText': [{'text': 'Masx', 'score': 10}, {'text': 'Maxs', 'score': 8}, {'text': 'Mxas', 'score':6}, {'text': 'Mxsa', 'score':4}]
      },
    ];
  var index = 0;

  void resetQuiz() {
    setState(() {
      index = 0;
      totalScore = 0;
    });  
  }

  var totalScore = 0;
  void _answerQuestion(int score) {
    totalScore += score;
    setState(() {
      index = index+1;  
    });
    print(index);
  }
  
  Widget build(BuildContext context) {
    
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'), 
        ),
        body:index < _questions.length
         ? Quiz(answerQuestion: _answerQuestion, questions: _questions, questionIndex: index) 
         : Result(totalScore, resetQuiz)
      ),  
    );
  }
}
