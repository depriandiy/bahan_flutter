import 'package:coba_lagi/models/cart.dart';
import 'package:flutter/material.dart';

class getCart with ChangeNotifier {
  late final Map<String, Cart> _items = {};
  Map<String, Cart> get items => _items;

  int get jumlah {
    return _items.length;
  }

  double get grandTotal {
    var total = 0.0;
    _items.forEach((key, value) {
      total += value.qty * value.price;
    });
    return total;
  }

  void addCart(String productId, String title, double price) {
    if (_items.containsKey(productId)) {
      // ketika product sudah ada cart, jadi tinggal tambah qty saja.
      _items.update(
          productId,
          (value) => Cart(
              id: value.id,
              title: value.title,
              price: value.price,
              qty: value.qty + 1));
    } else {
      // tambah product baru di cart.
      _items.putIfAbsent(
        productId,
        () => Cart(
          id: DateTime.now().toString(),
          title: title,
          price: price,
          qty: 1,
        ),
      );
    }
    notifyListeners();
  }
}
