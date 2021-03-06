import 'package:flutter/material.dart';
import 'package:flutter_lab6/components/book_detail.dart';
import 'package:http/http.dart' as http;

var client = new http.Client();

class BookItem extends StatelessWidget {
  final int bookId;
  final String title;
  final String thumbnailUrl;
  final int price;
  BookItem(this.bookId, this.price, this.thumbnailUrl, this.title);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GestureDetector(
        onTap: () async {
          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //       builder: (context) =>
          //           BookDetail(bookId, price, thumbnailUrl, title)),
          // );
          Navigator.of(context).pushNamed(
            '/book-detail',
            arguments: {
              "bookId": bookId,
              "title": title,
              "thumbnailUrl": thumbnailUrl,
              "price": price,
            },
          );
        },
        child: GridTile(
          child: Image.network(
            thumbnailUrl,
            fit: BoxFit.cover,
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black54,
            title: Text(
              title,
              textAlign: TextAlign.center,
            ),
            trailing: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {},
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}
