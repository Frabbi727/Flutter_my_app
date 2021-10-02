import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function () resetHandeler;
  Result(this.resultScore, this.resetHandeler);

  String get resultPhrase {
    var resultText = 'you did it';
    if (resultScore <= 4) {
      resultText = 'You are good';
      print(resultScore);
    } else if (resultScore <= 5) {
      resultText = 'you are better';
      print(resultScore);
    } else if (resultScore <= 6) {
      resultText = 'you are super';
      print(resultScore);
    } else {
      resultText = 'you fail';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(onPressed: resetHandeler, child: Text('Restart Quiz', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),))
      ],
    ));
  }
}
