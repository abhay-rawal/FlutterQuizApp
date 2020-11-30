import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic_quiz/quiz.dart';
import 'package:flutter_basic_quiz/results.dart';

void main() => runApp(MyNewApp());

class MyNewApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyNewAppState();
  }
}

class _MyNewAppState extends State<MyNewApp> {
  int _questionIndex = 0;
  int _totalScore = 0;
  var _questions = [
    {
      'questionText': 'What\'s your favourite color?',
      'answer': [
        {'text': 'Black', 'score': 1},
        {'text': 'Red', 'score': 1},
        {'text': 'Green', 'score': 1},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answer': [
        {'text': 'Rabbit', 'score': 1},
        {'text': 'Snake', 'score': 1},
        {'text': 'Elephant', 'score': 1},
        {'text': 'Lion', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favourite Instructor?',
      'answer': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 8},
        {'text': 'Max', 'score': 16},
        {'text': 'Max', 'score': 20},
      ],
    },
  ];
  // var questions = [
  //   'What\s your faviourite animal?',
  //   'What\'s your favourite color?'
  // ];

  get answerQuestion => null;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print('Answer Chosen!');
    print(_totalScore);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My new App'),
        ),
        body: _questionIndex == _questions.length
            ? Result(
                resetHandler: () {
                  setState(() {
                    _questionIndex = 0;
                    _totalScore = 0;
                  });
                },
                resultScore: _totalScore,
              )
            : Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              ),
      ),
    );
  }
}
