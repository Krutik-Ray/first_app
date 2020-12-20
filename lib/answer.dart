import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerHandler;
  Answer(this.answerHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        padding: EdgeInsets.all(15),
        child: Text('Option'),
        color: Colors.amber,
        onPressed: answerHandler,
        onLongPress: () {
          print("You just crushed that button ! ");
        },
      ),
    );
  }
}
