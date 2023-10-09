import 'dart:convert';

import 'package:local_marketplace/common/core/network/endpoint.dart';
import 'package:local_marketplace/common/core/network/index.dart';

import 'package:dio/dio.dart';

class UserService {
  final NetworkService _networkService = NetworkService();

  Future editProfile(Map<String, dynamic> data) async {
    try {
      await _networkService.putRequest(USERS_URL, body: data);
      return true;
    } on DioException catch (e) {
      print(e.toString());
      return e;
    }
  }

  Future<dynamic> getUserDetails() async {
    print("called api");
    try {
      final result = await _networkService.getRequest(USERS_URL);
      print(result);
      return result;
    } on DioException catch (e) {
      print("error");
      print(e);
      throw false;
    }
  }
  
}
