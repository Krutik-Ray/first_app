import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionsList;
  final int questionIndex;
  final Function answerResponse;

  Quiz(
      {@required this.questionsList,
      @required this.answerResponse,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionsList[questionIndex]['questionText'],
        ),
        ...(questionsList[questionIndex]['answers'] as List<String>)
            .map((answer) {
          return Answer(answerResponse, answer);
        }).toList()
        // Padding(padding: EdgeInsets.all(10)),
      ],
    );
  }
}
