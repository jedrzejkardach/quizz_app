import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State {
  var _questionIndex = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': ['Black', 'Blue', 'Yellow']
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': ['Horse', 'Rabbit', 'Dog']
    },
    {
      'questionText': 'What\'s your favourite car?',
      'answers': ['Hyundai', 'Skoda', 'Dacia', 'Mercedes']
    },
  ];

  void _questionAnswered() {
    setState(() {
      if (_questions.length < _questionIndex) {
        print('we have no more questions');
      } else {
        print('next question');
      }
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('My title'),
        ),
        backgroundColor: Colors.grey,
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _questionAnswered,
                questions: _questions,
                questionIndex: _questionIndex)
            : Result(),
      ),
    );
  }
}
