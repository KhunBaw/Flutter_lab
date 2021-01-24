import 'package:flutter/material.dart';
import 'csQuiz.dart';

class Score extends StatelessWidget {
  var questionIndex;
  var _questions;
  var _answerQuestion;
  var totalScore;

  Score(this._answerQuestion, this._questions, this.questionIndex,
      this.totalScore);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: (questionIndex < _questions.length)
          ? CsQuiz(_questions, questionIndex, _answerQuestion)
          : Container(
              child: Column(
                children: [
                  Image.network(
                      'https://cdn.pixabay.com/photo/2017/01/28/11/43/cup-2015198_960_720.png'),
                  Text("Your Score : $totalScore",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ],
              ),
            ),
    ));
  }
}
