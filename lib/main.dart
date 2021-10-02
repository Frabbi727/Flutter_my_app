import 'package:flutter/material.dart';
import 'package:my_app/result.dart';

import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() =>
      _MyAppState(); //making it public class using this "_" it can not be access form anywhere else this
}

class _MyAppState extends State<MyApp> {
  final _questions  = const [
    {
      'questionText': 'What\'s your favourite Colour ?',
      'answers': [
        {'text': 'red', 'score': 2},
        {'text': 'green', 'score': 3},
        {'text': 'yellow', 'score': 24},
        {'text': 'white', 'score': 5}
      ]
    },
    {
      'questionText': 'What\'s your favourite animal ?',
      'answers': [
        {'text': 'cow', 'score': 2 },
        {'text': 'goat', 'score': 5},
        {'text': 'crow', 'score': 3},
        {'text': 'lion', 'score': 4}
      ]
    },
    {
      'questionText': 'Who is your favourite',
      'answers': [
        {'text': 'Ronto', 'score': 4},
        {'text': 'Rabbi', 'score': 3},
        {'text': 'dolon', 'score': 2}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore =0;

  void _resetQuiz(){
    setState(() {
       _questionIndex = 0;
    _totalScore =0;
    });
   
  }

  void _answerQuestion(int score) {

    _totalScore += score;
    Future.delayed(
        Duration.zero,
        () => setState(() {
              _questionIndex = _questionIndex + 1;
            }));

    if (_questionIndex < _questions.length) {
      print('We have more Questions');
    }

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
                questions: _questions,
              )
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
 // start from 39
