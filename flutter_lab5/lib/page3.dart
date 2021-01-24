import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Page 3'),
          backgroundColor: Color(0xfff8dc81),
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
                      child: Text("Login"),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/');
                      }))
            ],
          ),
        ));
  }
}
