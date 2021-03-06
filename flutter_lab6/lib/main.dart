import 'package:flutter/material.dart';
import 'package:flutter_lab6/screens/book_list.dart';

import 'components/book_detail.dart';

void main() {
  runApp(BookShopApp());
}

class BookShopApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BookList(),
      routes: {BookDetail.routeName: (context) => BookDetail()},
    );
  }
}
