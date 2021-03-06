import 'package:flutter/material.dart';
import 'package:flutter_lab6/level2.dart';
import 'package:provider/provider.dart';
import 'root_widget.dart';

class Level1_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String x = Provider.of<Data>(context, listen: false).x;
    return Column(
      children: [Text2(x), Level2()],
    );
  }
}

class Text2 extends StatelessWidget {
  const Text2(this.x);

  final String x;

  @override
  Widget build(BuildContext context) {
    return Text('Level1_2 : $x');
  }
}
