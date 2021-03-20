import 'package:flutter/material.dart';
import 'package:flutter_lab6/providers/cart_provider.dart';
import 'package:provider/provider.dart';

class OrderScreen extends StatefulWidget {
  static const routeName = '/order';

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  final _form = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("My Oder"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: _form,
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: "Name"),
                textInputAction: TextInputAction.next,
                controller: _nameController,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Address"),
                maxLines: 5,
                keyboardType: TextInputType.multiline,
                textInputAction: TextInputAction.next,
                controller: _addressController,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter your address';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              FlatButton(
                height: 45,
                color: Colors.blueAccent,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () {
                  FocusScope.of(context).unfocus();
                  bool passValidate = _form.currentState.validate();
                  if (passValidate) {
                    cart.addOrder(
                        _nameController.text, _addressController.text);
                  }
                },
                child: Text(
                  "PLACE ORDER",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
