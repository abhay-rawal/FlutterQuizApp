import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function selectHandler;
  final String answer;
  Answers({this.selectHandler, this.answer});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          color: Colors.blue,
          onPressed: selectHandler,
          child: Text(
            answer,
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
