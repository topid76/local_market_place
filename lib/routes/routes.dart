// ignore_for_file: constant_pattern_never_matches_value_type

import 'package:flutter/material.dart';
import 'package:local_marketplace/routes/constants.dart';
import 'package:local_marketplace/screens/profile_edit_page.dart';
import 'package:local_marketplace/screens/registration_page.dart';
import 'package:local_marketplace/screens/login_page.dart';
import 'package:local_marketplace/screens/main_page.dart';
import 'package:local_marketplace/screens/profile_page.dart';
import 'package:local_marketplace/screens/product_registration.dart';
import 'package:local_marketplace/screens/shop_information.dart';
import 'package:local_marketplace/screens/shop_registration_page.dart';
import 'package:local_marketplace/screens/settings_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RegistrationRoute:
      return MaterialPageRoute(builder: (_) => RegistrationPage());
    case LoginRoute:
      return MaterialPageRoute(builder: (_) => LoginPage());
    case MainRoute:
      return MaterialPageRoute(builder: (_) => MainPage());
    case ProfileRoute:
      return MaterialPageRoute(builder: (_) => ProfilePage());
    case ProductRegistrationRoute:
      return MaterialPageRoute(builder: (_) => ProductRegistratioPage());
    case SettingsRoute:
      return MaterialPageRoute(builder: (_) => SettingsPage());
    case ShopRegistrationRoute:
      return MaterialPageRoute(builder: (_) => SellerRegistrationPage());
    case ShopInformationRoute:
      return MaterialPageRoute(builder: (_) => ShopInformationPage());
    case ProfileEditRoute:
      return MaterialPageRoute(builder: (_) => ProfileEditPage());
    default:
      return MaterialPageRoute(
          builder: (_) => const Scaffold(
                  body: Center(
                child: Text(
                  "Invalid Route",
                  style: TextStyle(color: Colors.blue),
                ),
              )));
  }
}
