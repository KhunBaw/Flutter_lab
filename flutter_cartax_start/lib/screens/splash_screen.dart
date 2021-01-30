import 'dart:ffi';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cartax/screens/mainscreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    var d = Duration(seconds: 5);
    Future.delayed(d, () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => MainScreen(),
          ),
          (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.black,
            alignment: Alignment.center,
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.black,
            child: Image.asset('images/cartax1.gif'),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.black,
            alignment: Alignment.center,
            child: TyperAnimatedTextKit(
              text: ["CAR TAX\nCALCULATOR"],
              textStyle: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
              speed: Duration(milliseconds: 200),
            ),
          ),
        )
      ]),
    );
  }
}
