import 'package:flutter/material.dart';
import 'package:sushi_app/screens/screens.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case BottomNavigationPage.routeString:
        return MaterialPageRoute(builder: (_) => BottomNavigationPage());
        break;
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(
              title: Text('Error Page'),
            ),
            body: Center(
              child: Text('Error Page'),
            ),
          ),
        );
    }
  }
}
