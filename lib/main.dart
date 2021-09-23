
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  void answerQuestion (){
    print('Answer chosen.');
  }
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var questions=[ 'What\'s your favourite Colour ?', 
                    'What\'s your favourite animal ?'];
    return  MaterialApp(
     home:  Scaffold(
      appBar: AppBar(title: const Text('My App'),
      ),

      body:  Column(children:  <Widget>  [
        const Text('The questions !'),
        ElevatedButton (child: Text('Answer 1'), onPressed: answerQuestion ),
        ElevatedButton (child: Text('Answer 2'), onPressed: answerQuestion),
        ElevatedButton (child: Text('Answer 3'), onPressed: answerQuestion),

      ],
      )
    ),
    
    );
  }
}
//video start from 20th
