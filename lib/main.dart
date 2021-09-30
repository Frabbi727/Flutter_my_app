import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() =>
      _MyAppState(); //making it public class using this "_" it can not be access form anywhere else this
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final questions = const [
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

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < questions.length) {
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
        body: _questionIndex < questions.length
            ? Column(
                children: <Widget>[
                  Question(
                      questions[_questionIndex]['questionText']?.toString() ?? ''),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('You did It'),
              ),
      ),
    );
  }
}
 // start from 39
