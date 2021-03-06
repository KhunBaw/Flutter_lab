import 'package:flutter/foundation.dart';

class Book {
  final int bookId;
  final String title;
  final String thumbnailUrl;
  final int price;

  Book({
    @required this.bookId,
    @required this.price,
    @required this.thumbnailUrl,
    @required this.title,
  });
}
