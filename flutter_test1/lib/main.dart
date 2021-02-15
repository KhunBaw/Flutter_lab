import 'Login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XD to Flutter example',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      // Home is an artboard exported from Adobe XD
      home: Login(),
    );
  }
}
