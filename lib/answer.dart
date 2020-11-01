import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String buttonText;

  Answer(this.buttonText, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        onPressed: this.selectHandler,
        child: Text(this.buttonText),
      ),
    );
  }
}
