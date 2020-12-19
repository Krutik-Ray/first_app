import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerResponse() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
    print("Answer Selected from function! ");
  }

  Widget build(BuildContext context) {
    var questionsList = [
      'What is your name?',
      'What is your favourite color?',
      'What is your area of interest',
      'a',
      'b',
      'c'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Simple Quiz"),
        ),
        body: Column(
          children: [
            Text(questionsList[questionIndex]),
            RaisedButton(
              child: Text('Answer 1.'),
              color: Colors.amber,
              onPressed: (answerResponse),
            ),
            RaisedButton(
              child: Text('Answer 2.'),
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
