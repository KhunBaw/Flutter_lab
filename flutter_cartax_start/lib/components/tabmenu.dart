import 'package:flutter/material.dart';
import '../screens/calculator.dart';
import '../screens/home.dart';
import '../screens/about.dart';

class CarTaxTabMenu extends StatelessWidget {
  final _currentTabIndex;

  CarTaxTabMenu(this._currentTabIndex);

  final List<Widget> tabs = [
    Center(
      child: Home(),
    ),
    Center(
      child: Calculator(),
    ),
    Center(
      child: About(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return tabs[_currentTabIndex];
  }
}
