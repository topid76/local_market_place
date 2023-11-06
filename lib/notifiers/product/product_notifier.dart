import 'package:flutter/material.dart';
import 'package:local_marketplace/models/product/product.dart';
import 'package:local_marketplace/services/product/product.service.dart';

class ProductNotifier extends ChangeNotifier {
  final ProductService _productService = ProductService();
  List<Product> _product = [];
  List<Product> get product => _product;

  set product(List<Product> product) {
    _product = product;
    notifyListeners();
  }

  Future getProducts() async {
    product = await _productService.getProducts();
  }

  Future init() async {
    await getProducts();
  }
}
