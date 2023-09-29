import 'package:local_marketplace/common/core/network/endpoint.dart';
import 'package:local_marketplace/common/core/network/index.dart';
import 'package:dio/dio.dart';

class AuthService {
  final NetworkService _networkService = NetworkService();

  Future register(Map<String, dynamic> data) async {
    try {
      await _networkService.postRequest(REGISTER_URL, body: data);
      return true; //must be token
    } on DioException catch (e) {
      print(e.toString());
      return e;
    }
  }
}
