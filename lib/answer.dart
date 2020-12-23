import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerHandler;
  final String answerText;

  Answer(this.answerHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        padding: EdgeInsets.all(12),
        textColor: Colors.white,
        child: Text(answerText),
        color: Colors.blueAccent,
        onPressed: answerHandler,
        onLongPress: () {
          print("You just crushed that button ! ");
        },
      ),
    );
  }
}
