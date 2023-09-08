import 'package:flutter/material.dart';

class BottomBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
      BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.black,
          ),
          label: 'Home'),
      BottomNavigationBarItem(
          icon: Icon(Icons.search, color: Colors.black), label: 'Search'),
      BottomNavigationBarItem(
          icon: Icon(Icons.message, color: Colors.black), label: 'Message'),
      BottomNavigationBarItem(
          icon: Icon(Icons.notifications, color: Colors.black),
          label: 'Notification'),
      BottomNavigationBarItem(
          icon: Icon(Icons.person, color: Colors.black), label: 'Profile'),
    ]);
  }
}
