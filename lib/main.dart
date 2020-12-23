import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _questionsList = [
    //final: runtime constant, const: compile and runtime constant.
    {
      //we can also declare values as constant, in that case, we can
      'questionText':
          'What is your favourite color?', //overwrite the variable, but not the values in it.
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

  void _answerResponse() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questionsList.length) {
      print('We have more questions.');
    } else {
      print('No more questions...');
    }
    print("Answer Selected from function! ");
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Simple Quiz"),
        ),
        body: _questionIndex < _questionsList.length
            ? Quiz(
                answerResponse: _answerResponse,
                questionsList: _questionsList,
                questionIndex: _questionIndex)
            : Result(),
      ),
    );
  }
}
