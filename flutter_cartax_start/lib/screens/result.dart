import 'package:flutter/material.dart';
import 'package:flutter_cartax/components/calculator/calculatedtax.dart';

class Result extends StatelessWidget {
  final int carTax;

  Result(this.carTax);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "CAR TAX",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        alignment: Alignment.center,
        child: CalculatedTax(carTax),
      ),
    );
  }
}
