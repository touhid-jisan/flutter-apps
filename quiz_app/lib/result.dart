import 'package:flutter/material.dart';


class Result extends StatelessWidget {
  final int score;
  final Function resetHandler;
  Result(this.score, this.resetHandler);



  String get resultPharse {
    var result = 'Your Score is : $score' ;
    if(score < 20) {
      result += ' \nand you\'ve failed!';
    } else if(score <30) {
      result += '\nand yout score is avg!';
    } else if (score<40) {
      result += '\nand your score is good!';
    } else if(score == 40) {
      result += '\nyou\'re awesome!';
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children : <Widget> [
          Text(resultPharse, 
            style: TextStyle(fontSize: 34, fontWeight:  FontWeight.bold,), 
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler, 
            child: Text('Reset'),
            color: Colors.blue,
            textColor: Colors.white,
          )
        ]
      )
    );
  }
}