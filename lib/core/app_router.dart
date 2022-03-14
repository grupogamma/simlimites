import 'package:app_sim/presentation/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('This is route ${settings.name}');

    switch (settings.name) {
      case '/welcome':
        return OnBoardingPage.route();
      case HomePage.routeName:
        return HomePage.route();
      case CartPage.routeName:
        return CartPage.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        settings: RouteSettings(name: '/error'),
        builder: (_) => Scaffold(
              appBar: AppBar(title: Text("Error Page")),
            ));
  }
}
