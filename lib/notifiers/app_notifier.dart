import 'package:flutter/cupertino.dart';
import 'package:local_marketplace/models/location_/region.dart';
import 'package:local_marketplace/services/locations_service.dart';

class AppNotifier extends ChangeNotifier {
  final LocationService _locationService = LocationService();
  String _currentToken = "";
  String get currentToken => _currentToken;

  set currentToken(String token) {
    _currentToken = token;
    notifyListeners();
  }

  List<Location> _province = [];
  List<Location> get province => _province;

  set province(List<Location> province) {
    _province = province;
    notifyListeners();
  }

  Future getProvince() async {
    final result = await _locationService.getAllProvince();
    province = result;
  }
}
