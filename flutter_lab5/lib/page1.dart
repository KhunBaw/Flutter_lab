import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Page 1'),
          backgroundColor: Color(0xfeb596e),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                  child: RaisedButton(
                      child: Text("Login"),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/');
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
                        Navigator.pushNamed(context, '/p3');
                      }))
            ],
          ),
        ));
  }
}
