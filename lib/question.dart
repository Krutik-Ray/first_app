import 'dart:ui';

import "package:flutter/material.dart";

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        // height: double.maxFinite,
        margin: EdgeInsets.all(12),
        // padding: EdgeInsets.all(0),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ));
  }
}
