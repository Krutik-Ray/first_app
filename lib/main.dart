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
  final _questionsList = [
    //final: runtime constant, const: compile and runtime constant.
    {
      //we can also declare values as constant, in that case, we can
      'questionText':
          'What is your favourite color?', //overwrite the variable, but not the values in it.
      'answers': [
        {'text': 'Black', 'score': 20},
        {'text': 'Red', 'score': 10},
        {'text': 'Green', 'score': 10},
        {'text': 'White', 'score': 5}
      ],
    },
    {
      'questionText': 'What  is your favourite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Dog', 'score': 9}
      ],
    },
    {
      'questionText': 'What is your favourite flower?',
      'answers': [
        {'text': 'Rose', 'score': 15},
        {'text': 'Tulip', 'score': 7},
        {'text': 'Lotus', 'score': 8},
        {'text': 'Lily', 'score': 9}
      ],
    },
  ];
  var _questionIndex = 0;
  int _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerResponse(int score) {
    _totalScore += score;

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
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
