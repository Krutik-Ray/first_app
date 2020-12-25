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
      // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Question(
          questionsList[questionIndex]['questionText'],
        ),
        ...(questionsList[questionIndex]['answers']
                as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerResponse(answer['score']), answer['text']);
        }).toList()
        // Padding(padding: EdgeInsets.all(10)),
      ],
    );
  }
}
