import 'package:flutter/material.dart';
import 'package:sushi_app/screens/screens.dart';

class BottomNavigationPage extends StatefulWidget {
  static const String routeString = '/bottom_navigation';
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigationPage> {
  final List screens = [
    HomePage(),
    AddToCart(),
    Scaffold(),
    Scaffold(),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        type: BottomNavigationBarType.fixed,
        items: [
          Icons.home,
          Icons.card_giftcard,
          Icons.message,
          Icons.account_box,
        ]
            .asMap()
            .map(
              (key, value) => MapEntry(
                key,
                BottomNavigationBarItem(
                  label: '',
                  icon: Container(
                    padding: _currentIndex == key
                        ? EdgeInsets.symmetric(horizontal: 24, vertical: 6)
                        : EdgeInsets.zero,
                    decoration: BoxDecoration(
                      color: _currentIndex == key ? Colors.black : Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(
                      value,
                      color: _currentIndex == key ? Colors.white : Colors.grey,
                      size: 30,
                    ),
                  ),
                ),
              ),
            )
            .values
            .toList(),
      ),
    );
  }
}
