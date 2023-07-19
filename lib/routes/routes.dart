import 'package:flutter/material.dart';
import '../screens/get_started_screen.dart';
import '../screens/home_screen.dart';
import '../screens/login_screen.dart';
import '../screens/register_screen.dart';

class RouteManager {
  static const String loginPage = '/';
  static const String registerPage = '/registerPage';
  static const String homePage = '/todoPage';
  static const String getStartedScreen = '/getStartedScreen';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginPage:
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
        );

      case registerPage:
        return MaterialPageRoute(
          builder: (context) => RegisterScreen(),
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
