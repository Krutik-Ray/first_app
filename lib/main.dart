import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionsList = ['What is your name?', 'What is your favourite color?'];
  void answerResponse() {
    print("Answer Selected from function! ");
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Simple Quiz"),
        ),
        body: Column(
          children: [
            Text(questionsList[1]),
            RaisedButton(
                child: Text('Answer 1.'),
                color: Colors.amber,
                onPressed: () {
                  print("Answer Selected! ");
                }),
            RaisedButton(
              child: Text('Answer 1.'),
              onPressed: (answerResponse),
              color: Colors.blueAccent,
              onLongPress: () {
                print("You just crushed that button ! ");
              },
            ),
          ],
        ),
      ),
    );
  }
}
