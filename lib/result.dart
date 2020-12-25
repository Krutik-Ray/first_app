import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get scoreAckn {
    String resultText;
    if (resultScore <= 10) {
      resultText = "That wasn't bad! Maybe try again next time...";
    } else if (resultScore <= 20) {
      resultText = "You are doing well, we can skype more...";
    } else if (resultScore <= 35) {
      resultText = "You are really good at this!";
    } else {
      resultText = "You are just awesome, keep it up!";
    }
    return resultScore.toString() + ('\n') + resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            scoreAckn,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Padding(padding: EdgeInsets.all(15)),
          FlatButton(
            child: Text('Restart Quiz'),
            textColor: Colors.blueAccent,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
