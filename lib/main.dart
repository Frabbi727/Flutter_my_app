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
    final _questions = const [
    {
      'questionText': 'What\'s your favourite Colour ?',
      'answers': ['red', 'green', 'yellow', 'white']
    },
    {
      'questionText': 'What\'s your favourite animal ?',
      'answers': ['cow', 'goat', 'crow', 'lion']
    },
    {
      'questionText': 'Who is your favourite',
      'answers': ['Ronto', 'rabbi', 'dolon']
    },
  ];

  var _questionIndex = 0;

 
  void _answerQuestion() {
   Future.delayed(Duration.zero, () =>  setState(() {
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
            ?  Quiz  (
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
                questions: _questions,
                
                
              )
            : Result(),
      ),
    );
  }
}
 // start from 39
