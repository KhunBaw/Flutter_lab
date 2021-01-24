import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          backgroundColor: Color(0xfff88f01),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                  child: RaisedButton(
                      child: Text("Page 1"),
                      onPressed: () {
                        Navigator.pushNamed(context, '/p1');
                      })),
              Container(
                  child: RaisedButton(
                      child: Text("Page 2"),
                      onPressed: () {
                        Navigator.pushNamed(context, '/p2');
                      })),
              Container(
                  child: RaisedButton(
                      child: Text("Page 3"),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/p3');
                      }))
            ],
          ),
        ));
  }
}
