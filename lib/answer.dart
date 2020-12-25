import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerHandler;
  final String answerText;

  Answer(this.answerHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(6),
      child: RaisedButton(
        padding: EdgeInsets.all(18),
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
