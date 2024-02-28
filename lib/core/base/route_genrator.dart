import 'package:flutter/material.dart';

import '../../src/auth/login_screen.dart';
import '../../src/main_screen/view/main_screen.dart';

class RouteGenerator {
  Map<String, dynamic> routs;
  RouteGenerator({
    required this.routs,
  });
  static Route<dynamic> generatedRoute(RouteSettings settings) {
    switch (settings.name) {
      case MainScreen.routeName:
        return MaterialPageRoute(builder: (_) => const MainScreen());
      case LoginScreen.routeName:
        return MaterialPageRoute(builder: (_) => LoginScreen());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
