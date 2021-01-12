import 'dart:ffi';
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(SlotMachine());
}

class SlotMachine extends StatelessWidget {
  const SlotMachine({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SlotMachine',
      home: Scaffold(
        appBar: AppBar(
          title: Text('SlotMachine'),
          backgroundColor: Colors.orangeAccent,
        ),
        backgroundColor: Color(0xAAdddddd),
        body: Slot(),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.orangeAccent,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
        ),
      ),
    );
  }
}

class Slot extends StatefulWidget {
  Slot({Key key}) : super(key: key);

  @override
  _SlotState createState() => _SlotState();
}

class _SlotState extends State<Slot> {
  var slot1 = Random().nextInt(11) + 1;

  var slot2 = Random().nextInt(11) + 1;

  var slot3 = Random().nextInt(11) + 1;

  void setSlotnumber() {
    setState(() {
      slot1 = Random().nextInt(11) + 1;

      slot2 = Random().nextInt(11) + 1;

      slot3 = Random().nextInt(11) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              padding: EdgeInsets.all(0.0),
              onPressed: setSlotnumber,
              child: Container(
                child: Image.asset('images/$slot1.png'),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              padding: EdgeInsets.all(0.0),
              onPressed: setSlotnumber,
              child: Container(
                child: Image.asset('images/$slot2.png'),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              padding: EdgeInsets.all(0.0),
              onPressed: setSlotnumber,
              child: Container(
                child: Image.asset('images/$slot3.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
