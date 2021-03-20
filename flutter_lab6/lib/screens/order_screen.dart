import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  OrderScreen({Key key}) : super(key: key);

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  final _form = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My order'),
      ),
      body: Form(
          child: ListView(
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: "Name"),
            textInputAction: TextInputAction.next,
            controller: _nameController,
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter your name';
              } else {
                return null;
              }
            },
          )
        ],
      )),
    );
  }
}
