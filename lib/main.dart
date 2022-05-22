import 'package:flutter/material.dart';
import 'package:flutter_l1/screen/login/login_screen.dart';
import 'package:flutter_l1/screen/signup/signup_screen.dart';

import 'app_routes.dart';
import 'themes/text_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: AppRoutes.onGenerateRoutes,
      theme: ThemeData(
        textTheme: textTheme,
      ),
      home: LoginScreen(),
    );
  }
}
