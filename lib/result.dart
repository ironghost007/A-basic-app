import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler; 
  
  
  String get resultPhrase {
    String resultText;

    if (resultScore >= 250) {
      resultText = 'Great';
    } else if (resultScore >= 150 && resultScore < 250) {
      resultText = 'Good';
    } else if (resultScore >= 75 && resultScore < 150) {
      resultText = "Not Good";
    } else {
      resultText = "Bad";
    }

    return resultText;
  }

  Result({this.resultScore, this.resetHandler});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            textColor: Colors.red,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
