import 'package:flutter/material.dart';
import 'questions.dart';
import 'answer.dart';

class Quize extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int counter;
  final Function getAnswer;

  Quize({
    @required this.questions,
    @required this.counter,
    @required this.getAnswer
  });

  @override
  Widget build(BuildContext context) {
    return Container(child:
    Column(children: [
      Question(questions[counter]['question']),
      ...(questions[counter]['answers'] as List<Map<String, Object>>).map((answer) {
        return Answer(answer['text'], () => getAnswer(answer['points']));
      }).toList()
    ],
    ),
    );
  }
}
