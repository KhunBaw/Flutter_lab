import 'package:flutter/material.dart';

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
  String questionText = "สาขาที่นักศึกษาชอบเรียน?";
  String answerText = "วิทยาการคอมพิวเตอร์";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              child: Text(
                questionText,
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: double.infinity,
              height: 70,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: new BoxDecoration(
                color: Colors.lightBlue[200],
                borderRadius: new BorderRadius.all(
                  const Radius.circular(10.0),
                ),
              ),
              child: RaisedButton(
                color: Colors.white,
                textColor: Colors.black,
                child: Text(
                  answerText,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  print("We love ComSci.");
                },
              ),
            ),
            Container(
              width: double.infinity,
              height: 70,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: new BoxDecoration(
                color: Colors.lightBlue[200],
                borderRadius: new BorderRadius.all(
                  const Radius.circular(10.0),
                ),
              ),
              child: RaisedButton(
                color: Colors.white,
                textColor: Colors.black,
                child: Text(
                  answerText,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  print("We love ComSci.");
                },
              ),
            ),
            Container(
              width: double.infinity,
              height: 70,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: new BoxDecoration(
                color: Colors.lightBlue[200],
                borderRadius: new BorderRadius.all(
                  const Radius.circular(10.0),
                ),
              ),
              child: RaisedButton(
                color: Colors.white,
                textColor: Colors.black,
                child: Text(
                  answerText,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  print("We love ComSci.");
                },
              ),
            ),
            Container(
              width: double.infinity,
              height: 70,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: new BoxDecoration(
                color: Colors.lightBlue[200],
                borderRadius: new BorderRadius.all(
                  const Radius.circular(10.0),
                ),
              ),
              child: RaisedButton(
                color: Colors.white,
                textColor: Colors.black,
                child: Text(
                  answerText,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  print("We love ComSci.");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
