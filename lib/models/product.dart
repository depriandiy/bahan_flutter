import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  @required
  String? id;
  @required
  String? title;
  @required
  String? imageUrl;
  @required
  double? price;
  @required
  String? desc;
  bool isFavorite;

  Product({
    this.id,
    this.title,
    this.imageUrl,
    this.price,
    this.desc,
    this.isFavorite = false,
  });

  void statusFav() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
