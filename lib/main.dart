import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final questions = const [
    {
      "questionText": "what's ur favorite colour?",
      "answers": [
        {"text": 'Black', "score": 100},
        {"text": "Blue", "score": 60},
        {"text": "Red", "score": 40},
        {"text": "White", "score": 20}
      ],
    },
    {
      "questionText": "What's ur ambition?",
      "answers": [
        {"text": "Physicist", "score": 100},
        {"text": "Engineer", "score": 60},
        {"text": "Doctor", "score": 40},
        {"text": "Lawyer", "score": 20}
      ],
    },
    {
      "questionText": "Who's your favorite scientist",
      "answers": [
        {"text": "Einstein", "score": 100},
        {"text": "Tesla", "score": 60},
        {"text": " Hawkins", "score": 40},
        {"text": "Feynman", "score": 20}
      ],
    },
  ];

  var questionIndex = 0;
  var totalScore = 0;

  void resetQuiz(){
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void quesAns(int score) {
    totalScore += score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
//        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          title: Text("MY FIRST APP !!"),
          centerTitle: true,
        ),
        body: questionIndex < questions.length
            ? Quiz(
                quesAns: quesAns,
                questions: questions,
                questionIndex: questionIndex,
              )
            : Result(resultScore:totalScore, resetHandler: resetQuiz)
      ),
    );
  }
}