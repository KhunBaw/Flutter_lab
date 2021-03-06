import 'package:flutter/material.dart';
import 'package:flutter_lab6/components/book_item.dart';
import 'package:flutter_lab6/models/book.dart';

class BookList extends StatelessWidget {
  List<Book> booklist = [
    Book(
        bookId: 0,
        price: 432,
        thumbnailUrl:
            'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/allen.jpg',
        title: 'Zend Framework in Action'),
    Book(
        bookId: 1,
        price: 222,
        thumbnailUrl:
            'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/allen.jpg',
        title: 'Baw Framework in Action'),
  ];

  BookList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Books'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, i) => BookItem(booklist[i].bookId,
            booklist[i].price, booklist[i].thumbnailUrl, booklist[i].title),
        itemCount: booklist.length,
        padding: EdgeInsets.all(10),
      ),
    );
  }
}
