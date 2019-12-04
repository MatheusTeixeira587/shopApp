import 'package:flutter/material.dart';
import 'package:shop_app/mocks/products.dart';
import 'package:shop_app/providers/product.dart';

class Products with ChangeNotifier {
  List<Product> _products = productsData;

  List<Product> get products => [..._products];

  List<Product> get favorites => [...products.where((p) => p.isFavorite)];

  void add(Product value) {
    _products.add(value);
    notifyListeners();
  }

  Product find(int id) => products.firstWhere((p) => p.id == id);
}
