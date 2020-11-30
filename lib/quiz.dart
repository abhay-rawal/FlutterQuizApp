import 'package:flutter/material.dart';
import 'questions.dart';
import 'answers.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.questionIndex,
    @required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
          questionText: questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answer'] as List).map((answer) {
          return Answers(
            answer: answer['text'],
            selectHandler: () => answerQuestion(answer['score']),
          );
        }).toList(),
      ],
    );
  }
}
