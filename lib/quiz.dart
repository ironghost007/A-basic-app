import 'package:flutter/material.dart';
import './questions.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function quesAns;
  final questionIndex;

  Quiz(
      { @required this.questions,
        @required this.quesAns,
        @required this.questionIndex
      });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
          questions[questionIndex]["questionText"],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answers) {
          return Answer(() => quesAns(answers['score']), answers["text"]);
        }).toList()
      ],
    );
  }
}
