import 'package:flutter/material.dart';
import 'package:flutter_app3/result.dart';
import 'questions.dart';
import 'answer.dart';
import 'quize.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;
  int _score = 0;

  var _questions = [
    {'question': 'What is your favorite color?', 'answers': [
      {'text': 'Red', 'points': 10},
      {'text': 'White', 'points': 20},
      {'text': 'Blue', 'points': 30},
    ]},
    {'question': 'What is your name?',
      'answers': [
        {'text': 'Roman', 'points': 10},
        {'text': 'Nika', 'points': 20},
        {'text': 'Jon', 'points': 30},
      ]},
    {'question': 'What is your age?', 'answers': [
      {'text': '12', 'points': 10},
      {'text': '22', 'points': 20},
      {'text': '32', 'points': 30},
      {'text': '42', 'points': 30},
    ]}
  ];

  void _answerQuestion(int points) {
    _score += points;
    setState(() {
      _counter += 1;
    });
  }

  void _resetQuiz(){
    setState(() {
      _score = 0;
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My app bar'),
      ),
      body: _counter < _questions.length ? Quize(
        questions: _questions,
        counter: _counter,
        getAnswer: _answerQuestion
      ) : Result(_score, _resetQuiz),
    ));
  }
}