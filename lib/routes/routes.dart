import 'package:flutter/material.dart';
import 'package:medi_app/screens/home_screen.dart';
import 'package:medi_app/services/login_or_register.dart';
import '../screens/get_started_screen.dart';

class RouteManager {
  static const String loginPage = '/';
  static const String homePage = '/todoPage';
  static const String getStartedScreen = '/getStartedScreen';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginPage:
        return MaterialPageRoute(
          builder: (context) => LoginOrRegister(),
        );


      case homePage:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );

      case getStartedScreen: // Handle the route for GetStartedScreen
        return MaterialPageRoute(
          builder: (context) => GetStartedScreen(),
        );

      default:
        throw FormatException('Route not found! Check routes again!');
    }
  }
}
