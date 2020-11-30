import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result({this.resultScore, this.resetHandler});
  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'Good';
    } else if (resultScore <= 16) {
      resultText = 'Pretty Good ';
    } else if (resultScore <= 20) {
      resultText = 'Best';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(resultPhrase),
        ),
        FlatButton(
          onPressed: resetHandler,
          child: Text('Reset'),
          color: Colors.blueGrey,
        )
      ],
    );
  }
}
