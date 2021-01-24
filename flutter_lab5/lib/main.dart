import 'package:flutter/material.dart';
import 'Login.dart';
import 'page1.dart';
import 'page2.dart';
import 'page3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/p1': (context) => Page1(),
        '/p2': (context) => Page2(),
        '/p3': (context) => Page3(),
      },
      //home: Login(),
    );
  }
}
