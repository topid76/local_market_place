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

  List<Location> _regions = [];
  List<Location> get regions => _regions;

  set regions(List<Location> regions) {
    _regions = regions;
    notifyListeners();
  }

  Future getRegions() async {
    final result = await _locationService.getAllRegions();
    regions = result;
  }
}
