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

  List<Location> _municipalities = [];
  List<Location> get municipalities => _municipalities;

  set municipalities(List<Location> municipalities) {
    _municipalities = municipalities;
    notifyListeners();
  }

  Future getProvince() async {
    final result = await _locationService.getAllProvince();
    province = result;
  }

  Future<List<Location>> getMunicipalitiesByProvince(String code) async {
    final result = await _locationService.getAllMunicipalitiesByProvince(code);
    return result;
  }

  Future<List<Location>> getCityByProvince(String code) async {
    final result = await _locationService
        .getAllMunicipalitiesByProvince(code); //change this toocitiies
    return result;
  }

  Future getMunCityByProvince(String code) async {
    //fethc1
    //fetch2
  }
}
