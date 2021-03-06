import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'root_widget.dart';

class Level1_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String x = Provider.of<Data>(context).x;
    return Column(
      children: [
        Text1(x),
        TextForX(x),
      ],
    );
  }
}

class Text1 extends StatelessWidget {
  const Text1(this.x);

  final String x;

  @override
  Widget build(BuildContext context) {
    return Text(
      'X at level 1_1 : $x',
      style: TextStyle(color: Colors.red),
    );
  }
}

class TextForX extends StatelessWidget {
  TextForX(this.x);
  final String x;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: Provider.of<Data>(context).changeX,
      decoration: InputDecoration(
          labelText: 'Enter', hintStyle: TextStyle(color: Colors.white)),
    );
  }
}
