import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class CsQuiz extends StatelessWidget {
  final List<Map> _questions;
  final int _questionIndex;
  final Function _selecHandler;

  CsQuiz(this._questions, this._questionIndex, this._selecHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Question(_questions[_questionIndex]['questionText']),
          ...(_questions[_questionIndex]['choices'] as List<String>).map((ch) {
            var a = _questions[_questionIndex];
            return Answer(() {
              _selecHandler(
                a['scores'][(a['choices'] as List<String>).indexOf(ch)],
              );
            }, ch);
          }).toList(),
        ],
      ),
    );
  }
}
