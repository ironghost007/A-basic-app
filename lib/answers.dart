import 'package:flutter/material.dart';


class Answer extends StatelessWidget {
  final Function indexInc;
  final String answerText;

  Answer(this.indexInc, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.red[900],
        child: Text(answerText,),
        onPressed: indexInc,
      )
    );
  }
}