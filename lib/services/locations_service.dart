import 'dart:convert';

import 'package:local_marketplace/common/core/network/endpoint.dart';
import 'package:local_marketplace/common/core/network/index.dart';
import 'package:local_marketplace/common/dependency_locator.dart';
import 'package:local_marketplace/models/location_/region.dart';
// import 'package:image_cropper/image_cropper.dart';
import 'package:path/path.dart';
import 'package:dio/dio.dart';

class LocationService {
  final NetworkService _networkService = getIt<NetworkService>();

  Future<List<Location>> getAllRegions() async {
    try {
      final response = await _networkService.getRequest(REGION_URL,
          baseUrl: LOCATION_API_BASE_URL);
      print(response.runtimeType);
      List<dynamic> data = jsonDecode(response);
      print(data);
      List<Location> regions =
          data.map((json) => Location.fromJson(json)).toList();
      return regions;
    } on DioException catch (e) {
      print(e.toString());
      return [];
    }
  }
}


/**
 * 
 * [Location(name,code), Location]
 */