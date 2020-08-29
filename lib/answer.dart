import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function pressHandler;
  final String answerText;
  
  Answer(this.pressHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.brown,
        child: Text(this.answerText),
        onPressed: pressHandler,
        textColor: Colors.white,
      ),
    );
  }
}
