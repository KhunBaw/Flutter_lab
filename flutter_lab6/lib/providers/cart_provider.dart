import 'dart:developer';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import '../models/cart.dart';

class Cart with ChangeNotifier {
  Map<int, CartItem> _items = {};

  Map<int, CartItem> get items {
    return {..._items};
  }

  int get itemCount {
    return _items.length;
  }

  void addItem(int bookId, String title, int price, int qty) {
    if (_items.containsKey(bookId)) {
      _items.update(
          bookId,
          (inCartItem) => CartItem(
                inCartItem.bookId,
                inCartItem.title,
                qty,
                inCartItem.price,
              ));
    } else {
      _items.putIfAbsent(bookId, () => CartItem(bookId, title, qty, price));
    }
    notifyListeners();
  }

  int get totalAmount {
    int total = 0;
    _items.forEach((key, item) {
      total = total + (item.price * item.qty);
    });
    return total;
  }

  void removeItem(int bookId) {
    _items.remove(bookId);
    notifyListeners();
  }

  void addOrder(name, address) {
    const url = 'http://192.168.1.15:3001/api/v1/addorder';
    Map<String, String> headers = {
      "Content-Type": "application/x-www-form-urlencoded",
      "Content-type": "application/json"
    };
    http
        .post(
      url,
      headers: headers,
      body: json.encode({
        'name': name,
        'address': address,
        'total': totalAmount,
      }),
    )
        .then((response) {
      print(response.statusCode);
    });
  }
}
