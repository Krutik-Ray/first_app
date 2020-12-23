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
      {
        'questionText': 'What is your favourite color?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What  is your favourite animal?',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Dog'],
      },
      {
        'questionText': 'What is your favourite flower?',
        'answers': ['Lily', 'Rose', 'Tulip', 'Lotus'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Simple Quiz"),
        ),
        body: Column(
          children: [
            Question(
              questionsList[_questionIndex]['questionText'],
            ),
            ...(questionsList[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerResponse, answer);
            }).toList()
            // Padding(padding: EdgeInsets.all(10)),
          ],
        ),
      ),
    );
  }
}
