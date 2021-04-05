import 'package:flutter/material.dart';

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

  void _questionAnswered() {
    setState(() {
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your favourite color?',
      'What is your favourite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('My title'),
        ),
        backgroundColor: Colors.grey,
        body: Center(
          child: Column(
            children: [
              Text(questions[_questionIndex % questions.length]),
              RaisedButton(
                child: Text('Answer1'),
                onPressed: _questionAnswered,
              ),
              RaisedButton(
                child: Text('Answer2'),
                onPressed: _questionAnswered,
              ),
              RaisedButton(
                child: Text('Answer3'),
                onPressed: _questionAnswered,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
