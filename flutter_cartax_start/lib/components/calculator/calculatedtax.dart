import 'package:flutter/material.dart';

class CalculatedTax extends StatelessWidget {
  final int carTax;

  CalculatedTax(this.carTax);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blueGrey[800],
      ),
      height: 65,
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "TAX :  ",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          Text(
            carTax.toString(),
            style: TextStyle(
              color: Colors.yellow[300],
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "  BAHT",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }
}
