import 'package:flutter/cupertino.dart';
import 'package:local_marketplace/models/location_/region.dart';
import 'package:local_marketplace/models/user/user.dart';
import 'package:local_marketplace/services/locations_service.dart';
import 'package:local_marketplace/services/user/user.service.dart';

class AppNotifier extends ChangeNotifier {
  final LocationService _locationService = LocationService();
  final UserService _userService = UserService();

  //currentUser
  User _currentUser = User();
  User get currentUser => _currentUser;

  set currentUser(User user) {
    _currentUser = user;
    notifyListeners();
  }

  String _currentToken = "";
  String get currentToken => _currentToken;

  set currentToken(String token) {
    _currentToken = token;
    notifyListeners();
  }

//province seters and get array

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

//municipalities setters and array

  List<Location> _municipalities = [];
  List<Location> get municipalities => _municipalities;

  set municipalities(List<Location> municipalities) {
    _municipalities = municipalities;
    notifyListeners();
  }

  // Future<List<Location>> getMunicipalitiesByProvince(String code) async {
  //   final result = await _locationService.getAllMunicipalitiesByProvince(code);

  //   return result;
  // }

// City set and get arrays
  List<Location> _cities = [];
  List<Location> get cities => _cities;

  set cities(List<Location> cities) {
    _cities = cities;
    notifyListeners();
  }

  // Future<List<Location>> getCityByProvince(String code) async {
  //   final result = await _locationService
  //       .getAllCityByProvince(code); //change this toocitiies
  //   return result;
  // }

  //municipalities and cities set get in combine

  List<Location> _munCity = [];
  List<Location> get munCity => _munCity;

  set munCity(List<Location> munCity) {
    _munCity = munCity;
    notifyListeners();
  }

  Future getMunCityByProvince(String code) async {
    final municipalities =
        await _locationService.getAllMunicipalitiesByProvince(code);
    final cities = await _locationService.getAllCityByProvince(code);
    //Combine 2 arrays
    final combineMunCity = [...municipalities, ...cities];
    munCity = combineMunCity;
    return munCity;
  }
//barangay

  List<Location> _barangay = [];
  List<Location> get barangay => _barangay;

  set barangay(List<Location> barangay) {
    _barangay = barangay;
    notifyListeners();
  }

  Future getBarangayByCityOrMunicipality(String code) async {
    final result =
        await _locationService.getAllBarangayByMunicipalityOrCity(code);
    barangay = result;
    return barangay;
  }

  Future init() async {
    try {
      await fetchUserDetails();
    } catch (e) {
      rethrow;
    }
  }

  Future fetchUserDetails() async {
    try {
      final result = await _userService.getUserDetails();
      currentUser = User(
          fullName: result["fullName"],
          phoneNumber: result["phoneNumber"],
          address: result["address"]);
    } catch (e) {
      rethrow;
    }
  }
}
