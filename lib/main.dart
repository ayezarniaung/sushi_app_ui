import 'package:flutter/material.dart';
import 'package:sushi_app/route_generator.dart';
import 'package:sushi_app/screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Sushi App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: BottomNavigationPage.routeString,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
