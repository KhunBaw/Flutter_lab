import 'package:flutter/material.dart';
import 'package:flutter_cartax/components/calculator/calcartax.dart';
import 'package:flutter_cartax/components/calculator/calculatebutton.dart';
import 'package:flutter_cartax/components/calculator/cartype.dart';
import 'package:flutter_cartax/components/calculator/cartype01.dart';
import 'package:flutter_cartax/components/calculator/cartype0203.dart';
import 'package:flutter_cartax/screens/result.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int carTax = 0;
  int typeIndex = 1;
  int cc = 6;
  int year = 1;
  int kl = 501;

  void changeCarType(int newTypeIndex) {
    setState(() {
      typeIndex = newTypeIndex;
    });
  }

  void changeCC(double newCC) {
    setState(() {
      cc = newCC.toInt();
    });
  }

  void changeYear(int newYear) {
    setState(() {
      year = newYear;
    });
  }

  void changeKl(double newkl) {
    setState(() {
      kl = newkl.toInt();
    });
  }

  void buttonClickedFunction() {
    setState(() {
      if (typeIndex == 1) {
        carTax = CalCarTax.calType1(cc: cc, year: year);
      } else if (typeIndex == 2) {
        carTax = CalCarTax.calType2(kl);
      } else {
        carTax = CalCarTax.calType3(kl);
      }
    });
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Result(carTax)));
  }

  Widget carDetail() {
    if (typeIndex == 1) {
      return CarType01(cc, year, changeCC, changeYear); //Replace code here
    } else {
      return CarType0203(kl, changeKl); //Replace code here
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CarType(typeIndex, changeCarType),

        //Replace Container for Car Detail by Type
        carDetail(),
        //Replace Container for Caculate Button
        CalculateButton(buttonClickedFunction)
      ],
    );
  }
}
