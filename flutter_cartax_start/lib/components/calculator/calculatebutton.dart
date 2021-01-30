import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  final Function buttonClickedFunction;

  CalculateButton(this.buttonClickedFunction);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonClickedFunction,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.red[500],
        ),
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Text(
          "CALCULATE !",
          style: TextStyle(
            //color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
