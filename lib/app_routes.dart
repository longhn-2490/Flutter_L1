import 'package:flutter/material.dart';
import 'package:flutter_l1/screen/login/login_screen.dart';
import 'package:flutter_l1/screen/signup/signup_screen.dart';

class AppRoutes {
  static Route? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(const Scaffold());
      case '/SignIn':
        return _materialRoute(LoginScreen());
      case '/SignUp':
        return _materialRoute(const SignUpScreen());
      default:
        return null;
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
