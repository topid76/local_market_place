import 'dart:convert';
import 'dart:io';
import 'package:local_marketplace/common/core/network/endpoint.dart';
import 'package:local_marketplace/common/core/network/index.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:dio/dio.dart';
import 'package:path/path.dart';

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

  Future<dynamic> saveImageProfile(
      CroppedFile? croppedFile, Map<String, dynamic> data) async {
    String url = USERS_URL;
    try {
      if (croppedFile != null) {
        String fileName = basename(croppedFile.path);
        List<int> bytes = await croppedFile.readAsBytes();
        var formData = FormData.fromMap({
          ...data,
          "imageUrl": MultipartFile.fromBytes(bytes, filename: fileName)
        });
        await _networkService.postRequest(url, body: formData);
        print(_networkService);
      } else {
        await _networkService.postRequest(url, body: data);
      }
      return true;
    } on DioException catch (e) {
      return false;
    }
  }
}
