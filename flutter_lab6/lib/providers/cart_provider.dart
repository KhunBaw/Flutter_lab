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
    _items.forEach((key, value) {
      total += (value.price * value.qty);
    });
    return total;
  }

  void increaseItem(int bookId) {
    _items.update(
        bookId,
        (inCartItem) => CartItem(
              inCartItem.bookId,
              inCartItem.title,
              inCartItem.qty + 1,
              inCartItem.price,
            ));
    notifyListeners();
  }

  void decreaseItem(int bookId) {
    _items.update(
        bookId,
        (inCartItem) => CartItem(
              inCartItem.bookId,
              inCartItem.title,
              inCartItem.qty - 1,
              inCartItem.price,
            ));
    notifyListeners();
  }

  void removeItem(int bookId) {
    _items.remove(bookId);
    notifyListeners();
  }
}
