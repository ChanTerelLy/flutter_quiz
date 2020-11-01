import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final Function resetQuiz;

  String get resultText {
    if (this.result <= 40) {
      return 'You are goood';
    } else {
      return 'You are bad';
    }
  }

  Result(this.result, this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget> [
        Text(
          resultText,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ),
        RaisedButton(onPressed: this.resetQuiz, child: Text('Reset your Quiz!'),)
      ]),
      alignment: Alignment.center,
    );
  }
}
