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
  var questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite Colour ?',
      'What\'s your favourite animal ?',
      'What\'s on your mind ?',
      'What is your name?',
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My App'), 
          ),
          body: Column(
            children: <Widget>[
              Question(questions[questionIndex]),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
              
              
            ],
          )),
    );
  }
}
 // start from 31
