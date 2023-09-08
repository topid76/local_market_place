// ignore_for_file: constant_pattern_never_matches_value_type

import 'package:flutter/material.dart';
import 'package:local_marketplace/routes/constants.dart';
import 'package:local_marketplace/screens/home_page.dart';
import 'package:local_marketplace/screens/registration_page.dart';
import 'package:local_marketplace/screens/login_page.dart';
import 'package:local_marketplace/screens/registration_page_2.dart';
import 'package:local_marketplace/screens/main_page.dart';
import 'package:local_marketplace/screens/profile_page.dart';
import 'package:local_marketplace/screens/product_registration.dart';
import 'package:local_marketplace/screens/seller_registration_page.dart';
import 'package:local_marketplace/screens/settings_page.dart';
import 'package:local_marketplace/screens/welcome_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return MaterialPageRoute(builder: (_) => HomePage());
    case RegistrationRoute:
      return MaterialPageRoute(builder: (_) => RegistrationPage());
    case RegistrationRoute2:
      return MaterialPageRoute(builder: (_) => RegistrationPage2());
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
    case WelcomeRoute:
      return MaterialPageRoute(builder: (_) => WelcomePage());
    case SellerRegistrationRoute:
      return MaterialPageRoute(builder: (_) => SellerRegistrationPage());
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
