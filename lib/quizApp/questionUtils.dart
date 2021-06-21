import 'package:flutter/material.dart';
import 'package:flutter_portfolio/quizApp/questions.dart';
class QuestionUtils{

  List<Questions> _questionList = [
    Questions( 'White chocolate isn\'t chocolate', true),
    Questions( 'Africa is the biggest continent in the world', false),
    Questions( 'LeBron James is the worlds best golfer', false)
  ];

  int _questionNum = 0;
  List<Icon> scoreKeeper = [];

  void counter(){
    print(_questionNum);
    if (_questionNum <_questionList.length - 1) {
      bool correctAnswer = _questionList[_questionNum].questionAnswer;
      if (correctAnswer) {
        scoreKeeper.add(Icon(Icons.check, color: Colors.green));
      } else {
        scoreKeeper.add(Icon(Icons.cancel, color: Colors.red));
      }
      _questionNum++;
    }
  }

  String getQuestion(){
    return _questionList[_questionNum].question;
  }

}