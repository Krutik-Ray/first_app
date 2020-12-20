import 'package:first_app/answer.dart';
import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerResponse() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
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
            Question(
              questionsList[_questionIndex],
            ),
            Answer(_answerResponse),
            Answer(_answerResponse),
            Answer(_answerResponse),
            // Padding(padding: EdgeInsets.all(10)),
          ],
        ),
      ),
    );
  }
}
