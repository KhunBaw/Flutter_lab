import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Hello World",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Speacial Topic in CS 61"),
          backgroundColor: Colors.pink[300],
        ),
        body: Column(
          children: [
            Center(child: Text("Welcome to Computer Science !!")),
          ],
        ),
      ),
    ),
  );
}
