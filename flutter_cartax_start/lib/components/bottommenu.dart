import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class CarTaxBottomMenu extends StatelessWidget {
  final _currentTabIndex;
  final Function setMenu;

  CarTaxBottomMenu(this.setMenu, this._currentTabIndex);
  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
      backgroundColor: Colors.black,
      selectedIndex: _currentTabIndex,
      iconSize: 30,
      items: [
        BottomNavyBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            title: Text("Home"),
            activeColor: Colors.white),
        BottomNavyBarItem(
            icon: Icon(
              Icons.calculate,
              color: Colors.green,
            ),
            title: Text("Calculate"),
            activeColor: Colors.white),
        BottomNavyBarItem(
            icon: Icon(
              Icons.contact_support,
              color: Colors.yellow,
            ),
            title: Text("Support"),
            activeColor: Colors.white),
      ],
      onItemSelected: (newIndex) {
        setMenu(newIndex);
      },
    );
  }
}
