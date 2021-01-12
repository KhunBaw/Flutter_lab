import 'package:flutter/material.dart';
import 'package:flutter_lab4/answer.dart';
import 'package:flutter_lab4/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ComSci Quiz',
      home: ComSciQuiz(title: 'How much do you know ComSci?'),
    );
  }
}

class ComSciQuiz extends StatefulWidget {
  ComSciQuiz({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ComSciQuizState createState() => _ComSciQuizState();
}

class _ComSciQuizState extends State<ComSciQuiz> {
  int questionIndex = 0;
  int answerIndex = 0;
  int totalScore = 0;

  final _questions = const [
    {
      'questionText': "1. สาขาที่นักศึกษาชอบเรียน?",
      'answerText': ["วิทยาการคอมพิวเตอร์", "IT", "วิทคอม", "วิทยา"],
      'scores': [10, 9, 8, 7]
    },
    {
      'questionText': "2. ง่วงนอนหรือยัง?",
      'answerText': ["ไม่ง่วง", "พอใช้", "ง่วง", "โครตง่วง"],
      'scores': [10, 9, 8, 7]
    },
    {
      'questionText': "3. สาขาที่นักศึกษาชอบเรียน?",
      'answerText': ["วิทยาการคอมพิวเตอร์", "IT", "วิทคอม", "วิทยา"],
      'scores': [10, 9, 8, 7]
    }
  ];

  @override
  Widget build(BuildContext context) {
    void _answerQuestion() {
      setState(() {
        questionIndex = questionIndex + 1;
        if (questionIndex >= _questions.length) {
          questionIndex = 0;
        }
        print("gggg");
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Question(_questions[questionIndex]['questionText']),
            Answer(_answerQuestion, _questions[questionIndex]['answerText'], 0),
            Answer(_answerQuestion, _questions[questionIndex]['answerText'], 1),
            Answer(_answerQuestion, _questions[questionIndex]['answerText'], 2),
            Answer(_answerQuestion, _questions[questionIndex]['answerText'], 3),
          ],
        ),
      ),
    );
  }
}
