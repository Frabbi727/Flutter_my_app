import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  
final Function() selectHandeler;
Answer(this.selectHandeler);
  @override
  Widget build(BuildContext context) {
    return Container( 
      color: Colors.green,
      child: ElevatedButton(
                  child: Text('Answer 1'), onPressed: selectHandeler,),
    );
  }
}