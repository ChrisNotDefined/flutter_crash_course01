import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  var questions = [
    'Tell me your favorite color...',
    'Tell me your favorite animal...'
  ];

  void ansQuestion() {
    setState(() {
      if (_questionIndex < questions.length - 1)
        _questionIndex++;
      else
        _questionIndex = 0;
    });
    print(_questionIndex);
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF550000),
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            Answer(ansQuestion),
            Answer(ansQuestion),
            Answer(ansQuestion),
          ],
        ),
      ),
    );
  }
}
