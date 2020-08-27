import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function pressHandler;
  
  Answer(this.pressHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.brown,
        child: Text('Ans 1'),
        onPressed: pressHandler,
        textColor: Colors.white,
      ),
    );
  }
}
