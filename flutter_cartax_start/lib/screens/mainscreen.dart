import 'package:flutter/material.dart';
import 'package:flutter_cartax/components/bottommenu.dart';
import '../components/tabmenu.dart';

class MainScreen extends StatefulWidget {
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int _currentMenuIndex = 0;
  void setMenu(int newIndex) {
    setState(() {
      _currentMenuIndex = newIndex;
    });
  }

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
      body: CarTaxTabMenu(_currentMenuIndex),
      bottomNavigationBar: CarTaxBottomMenu(setMenu, _currentMenuIndex),
      //BottomNaviationBar
    );
  }
}
