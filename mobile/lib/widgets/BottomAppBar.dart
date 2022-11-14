import 'package:flutter/material.dart';
import 'package:mobile/utilities/ColorCollection.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 1) {
      } else {}
    });
  }

  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: const MaterialColor(
          ColorCollection.dullWhiteColorINT, ColorCollection.dullWhiteColor),
      backgroundColor: const MaterialColor(
          ColorCollection.backgroundColorINT, ColorCollection.backgroundColor),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore_outlined),
          label: 'Profile',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: const MaterialColor(
          ColorCollection.highlightColorINT, ColorCollection.highlightColor),
      onTap: _onItemTapped,
    );
  }
}
