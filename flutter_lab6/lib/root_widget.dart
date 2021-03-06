import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'level1_1.dart';
import 'level1_2.dart';

class Rootwidget extends StatelessWidget {
  Rootwidget();

  void ChangX(String newX) {
    // setState(() {
    //   x = newX;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Data(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('data'),
        ),
        body: Column(
          children: [Level1_1(), Level1_2()],
        ),
      ),
    );
  }
}

class Data extends ChangeNotifier {
  String x = 'xxxx';

  void changeX(String newX) {
    x = newX;
    notifyListeners();
  }
}
