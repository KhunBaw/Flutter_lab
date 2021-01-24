import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Page 2'),
          backgroundColor: Color(0xf4d375d),
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
                      child: Text("Login"),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/');
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
