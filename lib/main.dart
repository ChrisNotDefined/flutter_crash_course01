import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

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

  final _questions = const [
    {
      'questionText': 'Tell me your favorite color...',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Blue', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'Tell me your favorite animal...',
      'answers': [
        {'text': 'Cat', 'score': 4},
        {'text': 'Bear', 'score': 3},
        {'text': 'Dog', 'score': 1},
        {'text': 'Lion', 'score': 8},
        {'text': 'Snake', 'score': 10}
      ]
    },
    {
      'questionText': 'What\'s the thing you desire the most?',
      'answers': [
        {'text': 'Money', 'score': 10},
        {'text': 'Power', 'score': 7},
        {'text': 'Peace', 'score': 2},
        {'text': 'Love', 'score': 1},
        {'text': 'Eternity', 'score': 5}
      ]
    },
  ];

  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _ansQuestion(int score) {
    _totalScore += score;

    setState(() {
      if (_questionIndex < _questions.length) _questionIndex++;
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF550000),
          title: Text('My First App'),
        ),
        body: (_questionIndex < _questions.length)
            ? Quiz(
                ansQuestion: _ansQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
