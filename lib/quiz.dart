import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int  questionIndex;
  final Function (int) answerQuestion;
   Quiz (
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['questionText'].toString() ),
        ...(questions[questionIndex]['answers'] as List<Map<String,dynamic>>).map((answer) {
          return Answer(()=> answerQuestion(answer['score']), answer['text'].toString());
        }).toList()
      ],
    );
  }
}
