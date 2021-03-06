import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'root_widget.dart';

class Level2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String x = Provider.of<Data>(context).x;
    return Column(
      children: [
        Text3(x),
      ],
    );
  }
}

class Text3 extends StatelessWidget {
  const Text3(this.x);

  final String x;

  @override
  Widget build(BuildContext context) {
    return Text('Level2 : $x');
  }
}
