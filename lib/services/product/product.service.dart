// ignore_for_file: depend_on_referenced_packages

import 'package:local_marketplace/common/core/network/endpoint.dart';
import 'package:local_marketplace/common/core/network/index.dart';
import 'package:local_marketplace/models/product/product.dart';
import 'package:dio/dio.dart';

class ProductService {
  final NetworkService _networkService = NetworkService();

  Future<List<Product>> getProducts() async {
    try {
      final result = await _networkService.getRequest(PRODUCT_URL);
      List<Map<String, dynamic>> data = List<Map<String, dynamic>>.from(result);
      return data.map((e) => Product.fromJson(e)).toList();
    } on DioException catch (e) {
      return [];
    }
  }
}
