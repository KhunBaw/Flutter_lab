import 'package:flutter/material.dart';

class BookDetail extends StatelessWidget {
  static const routeName = '/book-detail';
  @override
  Widget build(BuildContext context) {
    final book = ModalRoute.of(context).settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text(book["title"]),
      ),
      body: Text('data'),
    );
  }
}
